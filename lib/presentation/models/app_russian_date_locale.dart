// Package imports:
import 'package:date_format/date_format.dart';

class AppRussianDateLocale implements DateLocale {
  const AppRussianDateLocale();

  @override
  final List<String> monthsShort = const [
    'Янв',
    'Фев',
    'Мар',
    'Апр',
    'Май',
    'Июн',
    'Июл',
    'Авг',
    'Сен',
    'Окт',
    'Ноя',
    'Дек',
  ];

  @override
  final List<String> monthsLong = const [
    'января',
    'февраля',
    'марта',
    'апреля',
    'мая',
    'июня',
    'июля',
    'августа',
    'сентября',
    'октября',
    'ноября',
    'декабря',
  ];

  @override
  final List<String> daysShort = const [
    'Пн',
    'Вт',
    'Ср',
    'Чт',
    'Пт',
    'Сб',
    'Вс',
  ];

  @override
  final List<String> daysLong = const [
    'Понедельник',
    'Вторник',
    'Среда',
    'Четверг',
    'Пятница',
    'Суббота',
    'Воскресенье',
  ];

  @override
  String get am => 'AM';

  @override
  String get pm => 'PM';

  final List<String> monthsFull = const [
    'Январь',
    'Февраль',
    'Март',
    'Апрель',
    'Май',
    'Июнь',
    'Июль',
    'Август',
    'Сентябрь',
    'Октябрь',
    'Ноябрь',
    'Декабрь',
  ];

  List<List<int>> getMonths() => [
        [0, 1, 2, 3],
        [4, 5, 6, 7],
        [8, 9, 10, 11],
      ];

  String getMonthShort(int index) => monthsShort[index];

  String getMonthFull(int index) => monthsFull[index];
}
