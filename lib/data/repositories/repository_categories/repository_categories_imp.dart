// Project imports:
import 'package:fmt/data/models/app_category/app_category.dart';
import 'package:fmt/data/repositories/repository_categories/repository_categories.dart';

class RepositoryCategoriesImp extends RepositoryCategories {
  const RepositoryCategoriesImp();

  @override
  Future<List<AppCategory>> getData() async {
    return [
      AppCategory(
        id: '1',
        name: 'Кино',
        color: '46B4F2',
      )
    ];
  }
}
