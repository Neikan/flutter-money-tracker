// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:fmt/presentation/consts/keys.dart';
import 'package:fmt/presentation/consts/translations.dart';
import 'package:fmt/presentation/ui/components/fmt_app_bar.dart';
import 'package:fmt/presentation/ui/components/fmt_bottom_bar.dart';

class ScreenSummary extends StatelessWidget {
  const ScreenSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FMTAppBar(
        title: labelsNotFound[keyTitle]!,
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            labelsNotFound[keyContent]!,
          ),
        ),
      ),
      bottomNavigationBar: const FMTBottonBar(),
    );
  }
}
