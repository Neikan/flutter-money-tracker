// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:fmt/data/repositories/repository_date/repository_date.dart';
import 'package:fmt/domain/blocs/bloc_date/bloc_date_event.dart';
import 'package:fmt/domain/blocs/bloc_date/bloc_date_state.dart';

class BlocDate extends Bloc<BlocDateEvent, BlocDateState> {
  final RepositoryDate repo;

  BlocDate({required this.repo}) : super(const BlocDateState.loading()) {
    on<BlocDateEventInit>(_init);
    on<BlocDateEventSelect>(_select);
  }

  Future<void> _init(
    BlocDateEventInit event,
    Emitter<BlocDateState> emit,
  ) async {
    try {
      final startedDate = await repo.get();

      emit(BlocDateState.loaded(startedDate));
    } catch (e) {
      emit(BlocDateState.error(e.toString()));
    }
  }

  Future<void> _select(
    BlocDateEventSelect event,
    Emitter<BlocDateState> emit,
  ) async {
    try {
      await repo.select(event.date);

      emit(BlocDateState.loaded(event.date));
    } catch (e) {
      emit(BlocDateState.error(e.toString()));
    }
  }
}
