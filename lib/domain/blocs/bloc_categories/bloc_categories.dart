// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:fmt/data/repositories/repository_categories/repository_categories.dart';
import 'package:fmt/domain/blocs/bloc_categories/bloc_categories_event.dart';
import 'package:fmt/domain/blocs/bloc_categories/bloc_categories_state.dart';

class BlocCategories extends Bloc<BlocCategoriesEvent, BlocCategoriesState> {
  final RepositoryCategories repo;

  BlocCategories({required this.repo})
      : super(const BlocCategoriesState.loading()) {
    on<BlocCategoriesEventInit>(_init);
    on<BlocCategoriesEventAdd>(_add);
    on<BlocCategoriesEventRequestToRemove>(_requestToRemove);
    on<BlocCategoriesEventCancelToRemove>(_cancelToRemove);
    on<BlocCategoriesEventConfirmToRemove>(_confirmToRemove);
  }

  Future<void> _init(
    BlocCategoriesEventInit event,
    Emitter<BlocCategoriesState> emit,
  ) async {
    try {
      final categories = await repo.get();

      emit(BlocCategoriesState.loaded(categories));
    } catch (e) {
      emit(BlocCategoriesState.error(e.toString()));
    }
  }

  Future<void> _add(
    BlocCategoriesEventAdd event,
    Emitter<BlocCategoriesState> emit,
  ) async {
    try {
      await repo.add(event.category);

      final categories = await repo.get();

      emit(BlocCategoriesState.loaded(categories));
    } catch (e) {
      emit(BlocCategoriesState.error(e.toString()));
    }
  }

  Future<void> _requestToRemove(
    BlocCategoriesEventRequestToRemove event,
    Emitter<BlocCategoriesState> emit,
  ) async {
    try {
      await repo.requestToRemove(event.category);

      final categories = await repo.get();

      emit(BlocCategoriesState.loaded(categories));
    } catch (e) {
      emit(BlocCategoriesState.error(e.toString()));
    }
  }

  Future<void> _cancelToRemove(
    BlocCategoriesEventCancelToRemove event,
    Emitter<BlocCategoriesState> emit,
  ) async {
    try {
      await repo.cancelToRemove(event.category);

      final categories = await repo.get();

      emit(BlocCategoriesState.loaded(categories));
    } catch (e) {
      emit(BlocCategoriesState.error(e.toString()));
    }
  }

  Future<void> _confirmToRemove(
    BlocCategoriesEventConfirmToRemove event,
    Emitter<BlocCategoriesState> emit,
  ) async {
    try {
      await repo.confirmToRemove(event.category);

      final categories = await repo.get();

      emit(BlocCategoriesState.loaded(categories));
    } catch (e) {
      emit(BlocCategoriesState.error(e.toString()));
    }
  }
}
