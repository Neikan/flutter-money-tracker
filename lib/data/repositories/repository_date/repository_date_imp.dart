// Package imports:
import 'package:shared_preferences/shared_preferences.dart';

// Project imports:
import 'package:fmt/data/models/app_date/app_date.dart';
import 'package:fmt/data/repositories/repository_date/repository_date.dart';

const String keySettingsYear = 'settingsYear';
const String keySettingsMonth = 'settingsMonth';

class RepositoryDateImp extends RepositoryDate {
  const RepositoryDateImp();

  static AppDate state = const AppDate(month: 3, year: 2023);

  @override
  Future<AppDate> get() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final month = prefs.getInt(keySettingsMonth);
    final year = prefs.getInt(keySettingsYear);

    if (month != null && year != null) {
      return AppDate(
        month: month,
        year: year,
      );
    }

    return AppDate(
      month: DateTime.now().month - 1,
      year: DateTime.now().year,
    );
  }

  @override
  Future<void> select(AppDate date) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setInt(keySettingsYear, date.year);
    prefs.setInt(keySettingsMonth, date.month);

    state = date;
  }
}
