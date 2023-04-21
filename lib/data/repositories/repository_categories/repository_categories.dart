// Project imports:
import 'package:fmt/data/models/app_category/app_category.dart';

abstract class RepositoryCategories {
  const RepositoryCategories();

  Future<List<AppCategory>> get();

  Future<void> add(AppCategory category);

  Future<void> requestToRemove(AppCategory category);

  Future<void> cancelToRemove(AppCategory category);

  Future<void> confirmToRemove(AppCategory category);
}
