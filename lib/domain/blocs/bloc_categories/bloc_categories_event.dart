// Project imports:
import 'package:fmt/data/models/app_category/app_category.dart';

abstract class BlocCategoriesEvent {}

class BlocCategoriesEventInit extends BlocCategoriesEvent {}

class BlocCategoriesEventAdd extends BlocCategoriesEvent {
  final AppCategory category;

  BlocCategoriesEventAdd(this.category);
}

class BlocCategoriesEventRequestToRemove extends BlocCategoriesEvent {
  final AppCategory category;

  BlocCategoriesEventRequestToRemove(this.category);
}

class BlocCategoriesEventRemove extends BlocCategoriesEvent {
  final AppCategory category;

  BlocCategoriesEventRemove(this.category);
}
