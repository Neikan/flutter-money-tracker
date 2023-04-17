// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:fmt/data/repositories/repository_categories/repository_categories.dart';
import 'package:fmt/domain/blocs/bloc_category/bloc_categories_event.dart';
import 'package:fmt/domain/blocs/bloc_category/bloc_categories_state.dart';

class BlocCategories extends Bloc<BlocCategoriesEvent, BlocCategoriesState> {
  final RepositoryCategories repo;

  BlocCategories({required this.repo})
      : super(const BlocCategoriesState.loading()) {
    on<BlocCategoriesEventInit>(_init);
    on<BlocCategoriesEventAdd>(_add);
  }

  Future<void> _init(
    BlocCategoriesEventInit event,
    Emitter<BlocCategoriesState> emit,
  ) async {
    try {
      final categories = await repo.getData();

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
      await repo.addData(event.category);

      final categories = await repo.getData();

      emit(BlocCategoriesState.loaded(categories));
    } catch (e) {
      emit(BlocCategoriesState.error(e.toString()));
    }
  }
}
