// Project imports:
import 'package:fmt/data/models/app_category/app_category.dart';
import 'package:fmt/data/repositories/repository_categories/repository_categories.dart';

class RepositoryCategoriesImp extends RepositoryCategories {
  const RepositoryCategoriesImp();

  static List<AppCategory> state = [
    AppCategory(
      id: '1',
      name: 'Кино',
      color: '46B4F2',
    ),
    AppCategory(
      id: '2',
      name: 'Игры',
      color: '160452',
    ),
  ];

  @override
  Future<List<AppCategory>> getData() async {
    return state;
  }

  @override
  Future<void> addData(AppCategory category) async {
    state = [...state, category];
  }
}
