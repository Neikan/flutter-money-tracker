// Flutter imports:
import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class GlobalNavigator {
  static void showAlert(Widget dialog) {
    showDialog<dynamic>(
      context: navigatorKey.currentContext!,
      builder: (_) => dialog,
    );
  }
}
