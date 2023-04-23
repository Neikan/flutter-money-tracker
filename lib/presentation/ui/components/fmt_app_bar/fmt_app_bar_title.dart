// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:fmt/data/models/app_date/app_date.dart';
import 'package:fmt/presentation/config/navigator.dart';
import 'package:fmt/presentation/models/app_russian_date_locale.dart';
import 'package:fmt/presentation/ui/components/fmt_hero_text.dart';
import 'package:fmt/presentation/ui/components/fmt_month_picker.dart';
import 'package:fmt/presentation/ui/styles/themes.dart';

class FMTAppBarTitle extends StatelessWidget {
  final AppDate? date;
  final String? tag, title;

  const FMTAppBarTitle({
    super.key,
    this.date,
    this.tag,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    if (tag != null) {
      return FMTHeroText(
        tag: tag!,
        title: title!,
        style: appBarTitleTheme,
      );
    }

    if (date != null) {
      return InkWell(
        borderRadius: BorderRadius.circular(10.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: Text(
            '${const AppRussianDateLocale().getMonthFull(date!.month)} ${date!.year}',
          ),
        ),
        onTap: () => GlobalNavigator.showAlert(FMTMonthPicker(date: date!)),
      );
    }

    return Text(title!);
  }
}
