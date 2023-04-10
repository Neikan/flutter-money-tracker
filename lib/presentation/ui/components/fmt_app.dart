// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:fmt/presentation/consts/routes.dart';
import 'package:fmt/presentation/ui/styles/themes.dart';
import 'package:fmt/presentation/utils/routes.dart';

class FMTApp extends StatelessWidget {
  const FMTApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: defaultTheme,
      onGenerateRoute: generateRoute,
      initialRoute: routeSummary,
    );
  }
}
