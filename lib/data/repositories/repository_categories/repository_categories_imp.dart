// Project imports:
import 'package:fmt/data/models/app_category/app_category.dart';
import 'package:fmt/data/repositories/repository_categories/repository_categories.dart';

class RepositoryCategoriesImp extends RepositoryCategories {
  const RepositoryCategoriesImp();

  static List<AppCategory> state = [
    const AppCategory(
      id: '1',
      name: 'Кино',
      color: '46B4F2',
    ),
    const AppCategory(
      id: '2',
      name: 'Игры',
      color: '160452',
    ),
  ];

  @override
  Future<List<AppCategory>> get() async {
    return state;
  }

  @override
  Future<void> add(AppCategory category) async {
    state = [...state, category];
  }

  @override
  Future<void> requestToRemove(AppCategory category) async {
    final updatedCategory = category.copyWith(isRequestToRemove: true);

    final newState = state
        .map((element) => category.id == element.id ? updatedCategory : element)
        .toList();

    state = newState;
  }

  @override
  Future<void> cancelToRemove(AppCategory category) async {
    final updatedCategory = category.copyWith(isRequestToRemove: false);

    final newState = state
        .map((element) => category.id == element.id ? updatedCategory : element)
        .toList();

    state = newState;
  }

  @override
  Future<void> remove(AppCategory category) async {
    state = state.where((element) => category.id != element.id).toList();
  }
}
