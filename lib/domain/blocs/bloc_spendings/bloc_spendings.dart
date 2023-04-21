// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:fmt/data/repositories/repository_spendings/repository_spendings.dart';
import 'package:fmt/domain/blocs/bloc_spendings/bloc_spendings_event.dart';
import 'package:fmt/domain/blocs/bloc_spendings/bloc_spendings_state.dart';

class BlocSpendings extends Bloc<BlocSpendingsEvent, BlocSpendingsState> {
  final RepositorySpendings repo;

  BlocSpendings({required this.repo})
      : super(const BlocSpendingsState.loading()) {
    on<BlocSpendingsEventInit>(_init);
    on<BlocSpendingsEventAdd>(_add);
    on<BlocSpendingsEventRequestToRemove>(_requestToRemove);
    on<BlocSpendingsEventCancelToRemove>(_cancelToRemove);
    on<BlocSpendingsEventConfirmToRemove>(_confirmToRemove);
  }

  Future<void> _init(
    BlocSpendingsEventInit event,
    Emitter<BlocSpendingsState> emit,
  ) async {
    try {
      final spendings = await repo.get(event.category.id);

      emit(BlocSpendingsState.loaded(spendings));
    } catch (e) {
      emit(BlocSpendingsState.error(e.toString()));
    }
  }

  Future<void> _add(
    BlocSpendingsEventAdd event,
    Emitter<BlocSpendingsState> emit,
  ) async {
    try {
      await repo.add(event.spending);

      final spendings = await repo.get(event.spending.categoryId);

      emit(BlocSpendingsState.loaded(spendings));
    } catch (e) {
      emit(BlocSpendingsState.error(e.toString()));
    }
  }

  Future<void> _requestToRemove(
    BlocSpendingsEventRequestToRemove event,
    Emitter<BlocSpendingsState> emit,
  ) async {
    try {
      await repo.requestToRemove(event.spending);

      final spendings = await repo.get(event.spending.categoryId);

      emit(BlocSpendingsState.loaded(spendings));
    } catch (e) {
      emit(BlocSpendingsState.error(e.toString()));
    }
  }

  Future<void> _cancelToRemove(
    BlocSpendingsEventCancelToRemove event,
    Emitter<BlocSpendingsState> emit,
  ) async {
    try {
      await repo.cancelToRemove(event.spending);

      final spendings = await repo.get(event.spending.categoryId);

      emit(BlocSpendingsState.loaded(spendings));
    } catch (e) {
      emit(BlocSpendingsState.error(e.toString()));
    }
  }

  Future<void> _confirmToRemove(
    BlocSpendingsEventConfirmToRemove event,
    Emitter<BlocSpendingsState> emit,
  ) async {
    try {
      await repo.confirmToRemove(event.spending);

      final spendings = await repo.get(event.spending.categoryId);

      emit(BlocSpendingsState.loaded(spendings));
    } catch (e) {
      emit(BlocSpendingsState.error(e.toString()));
    }
  }
}
