// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:fmt/presentation/consts/routes.dart';
import 'package:fmt/presentation/ui/screens/screen_not_found.dart';
import 'package:fmt/presentation/ui/screens/screen_summary/screen_summary.dart';

Route<dynamic> generateRoute(RouteSettings settings) => MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) {
        switch (settings.name) {
          case routeSummary:
            return const ScreenSummary();

          default:
            return const ScreenNotFound();
        }
      },
    );
