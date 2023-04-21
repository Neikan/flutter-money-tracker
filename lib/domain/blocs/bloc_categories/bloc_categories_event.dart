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

class BlocCategoriesEventCancelToRemove extends BlocCategoriesEvent {
  final AppCategory category;

  BlocCategoriesEventCancelToRemove(this.category);
}

class BlocCategoriesEventConfirmToRemove extends BlocCategoriesEvent {
  final AppCategory category;

  BlocCategoriesEventConfirmToRemove(this.category);
}
