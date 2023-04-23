// Project imports:
import 'package:fmt/data/models/app_date/app_date.dart';

abstract class RepositoryDate {
  const RepositoryDate();

  Future<AppDate> get();

  Future<void> select(AppDate date);
}
