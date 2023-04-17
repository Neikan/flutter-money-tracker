// Project imports:
import 'package:fmt/data/models/app_category/app_category.dart';

abstract class RepositoryCategories {
  const RepositoryCategories();

  Future<List<AppCategory>> getData();

  Future<void> addData(AppCategory category);
}
