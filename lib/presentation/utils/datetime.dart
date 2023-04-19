// Package imports:
import 'package:date_format/date_format.dart';

// Project imports:
import 'package:fmt/presentation/consts/common.dart';
import 'package:fmt/presentation/models/app_russian_date_locale.dart';

String getFormattedDate(
  int? date, {
  List<String> format = datetimeFullYear,
  bool isUtc = false,
}) =>
    date != null
        ? formatDate(
            DateTime.fromMillisecondsSinceEpoch(date, isUtc: isUtc),
            format,
            locale: const AppRussianDateLocale(),
          )
        : '';

String getFormattedDateValue(dynamic value) =>
    value is int ? getFormattedDate(value, format: dateFullYear) : '';

String getFormattedDatetimeValue(dynamic value) =>
    value is int ? getFormattedDate(value) : '';

String getDatePartWithLeadZero(int datePart) =>
    datePart.toString().padLeft(2, '0');
