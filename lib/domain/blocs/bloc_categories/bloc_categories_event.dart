// Project imports:
import 'package:fmt/data/models/app_category/app_category.dart';

abstract class BlocCategoriesEvent {}

class BlocCategoriesEventInit extends BlocCategoriesEvent {}

class BlocCategoriesEventAdd extends BlocCategoriesEvent {
  final AppCategory category;

  BlocCategoriesEventAdd(this.category);
}
