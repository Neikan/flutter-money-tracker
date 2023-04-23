// Project imports:
import 'package:fmt/data/models/app_date/app_date.dart';

abstract class BlocDateEvent {}

class BlocDateEventInit extends BlocDateEvent {}

class BlocDateEventSelect extends BlocDateEvent {
  final AppDate date;

  BlocDateEventSelect(this.date);
}
