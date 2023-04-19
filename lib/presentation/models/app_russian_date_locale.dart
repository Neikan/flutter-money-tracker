// Package imports:
import 'package:date_format/date_format.dart';

class AppRussianDateLocale implements DateLocale {
  const AppRussianDateLocale();

  @override
  final List<String> monthsShort = const [
    'янв',
    'февр',
    'март',
    'апр',
    'май',
    'июнь',
    'июль',
    'авг',
    'сент',
    'окт',
    'нояб',
    'дек'
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
    'декабря'
  ];

  @override
  final List<String> daysShort = const [
    'Пн',
    'Вт',
    'Ср',
    'Чт',
    'Пт',
    'Сб',
    'Вс'
  ];

  @override
  final List<String> daysLong = const [
    'Понедельник',
    'Вторник',
    'Среда',
    'Четверг',
    'Пятница',
    'Суббота',
    'Воскресенье'
  ];

  @override
  String get am => 'AM';

  @override
  String get pm => 'PM';
}
