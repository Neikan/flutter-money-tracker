// Project imports:
import 'package:fmt/data/models/app_category/app_category.dart';
import 'package:fmt/data/models/app_spending/app_spending.dart';

abstract class BlocSpendingsEvent {}

class BlocSpendingsEventInit extends BlocSpendingsEvent {
  final AppCategory category;

  BlocSpendingsEventInit(this.category);
}

class BlocSpendingsEventAdd extends BlocSpendingsEvent {
  final AppSpending spending;

  BlocSpendingsEventAdd(this.spending);
}

class BlocSpendingsEventRequestToRemove extends BlocSpendingsEvent {
  final AppSpending spending;

  BlocSpendingsEventRequestToRemove(this.spending);
}

class BlocSpendingsEventCancelToRemove extends BlocSpendingsEvent {
  final AppSpending spending;

  BlocSpendingsEventCancelToRemove(this.spending);
}

class BlocSpendingsEventConfirmToRemove extends BlocSpendingsEvent {
  final AppSpending spending;

  BlocSpendingsEventConfirmToRemove(this.spending);
}
