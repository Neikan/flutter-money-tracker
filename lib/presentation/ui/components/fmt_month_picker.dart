// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:fmt/data/models/app_date/app_date.dart';
import 'package:fmt/domain/blocs/bloc_date/bloc_date.dart';
import 'package:fmt/domain/blocs/bloc_date/bloc_date_event.dart';
import 'package:fmt/presentation/consts/keys.dart';
import 'package:fmt/presentation/consts/translations.dart';
import 'package:fmt/presentation/models/app_russian_date_locale.dart';
import 'package:fmt/presentation/ui/components/buttons/fmt_button_elevated.dart';
import 'package:fmt/presentation/ui/components/buttons/fmt_button_text.dart';
import 'package:fmt/presentation/ui/components/fmt_alert_dialog.dart';
import 'package:fmt/presentation/ui/styles/colors.dart' as colors;

class FMTMonthPicker extends StatefulWidget {
  final AppDate date;

  const FMTMonthPicker({
    super.key,
    required this.date,
  });

  @override
  State<FMTMonthPicker> createState() => _FMTMonthPickerState();
}

class _FMTMonthPickerState extends State<FMTMonthPicker> {
  late int _selectedMonth;
  late int _selectedYear;

  @override
  void initState() {
    super.initState();

    _selectedMonth = widget.date.month;
    _selectedYear = widget.date.year;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> handleRender() {
      return const AppRussianDateLocale()
          .getMonths()
          .map(
            (row) => _buildRow(row),
          )
          .toList();
    }

    return FMTDialogWrapper(
      titlePadding: EdgeInsets.zero,
      contentPadding: const EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
      title: Container(
        padding: const EdgeInsets.only(left: 23.0, right: 23.0),
        decoration: const BoxDecoration(
          color: colors.brand,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15.0),
            topLeft: Radius.circular(15.0),
          ),
        ),
        height: 104,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, bottom: 15.0),
                  child: Text(
                    const AppRussianDateLocale()
                        .getMonthFull(widget.date.month),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Text(
                  '$_selectedYear',
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  focusColor: Colors.amber,
                  icon: const Icon(Icons.keyboard_arrow_up),
                  onPressed: () => setState(() => _selectedYear++),
                ),
                IconButton(
                  icon: const Icon(Icons.keyboard_arrow_down),
                  onPressed: () => setState(() => _selectedYear--),
                ),
              ],
            ),
          ],
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [...handleRender()],
      ),
      actions: [
        FMTButtonElevated(
          onPressed: () {
            BlocProvider.of<BlocDate>(context).add(
              BlocDateEventSelect(
                AppDate(month: _selectedMonth, year: _selectedYear),
              ),
            );
          },
          title: labelsButtons[keyButtonConfirm]!,
        ),
        const FMTButtonText(),
      ],
    );
  }

  Widget _buildRow(List<int> months) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...months.map(
            (month) => InkWell(
              borderRadius: BorderRadius.circular(25.0),
              child: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: month == _selectedMonth ? colors.brand : null,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    const AppRussianDateLocale().monthsShort[month],
                    style: TextStyle(
                      color: month == _selectedMonth
                          ? Colors.white
                          : month == widget.date.month
                              ? colors.brand
                              : Colors.black,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
              onTap: () => setState(() => _selectedMonth = month),
            ),
          ),
        ].toList(),
      ),
    );
  }
}
