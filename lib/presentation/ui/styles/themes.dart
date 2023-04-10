// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final defaultTheme = ThemeData(
  appBarTheme: appBarTheme,
  primaryColor: Colors.white,
  primarySwatch: Colors.deepPurple,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  iconTheme: iconTheme,
);

const appBarTheme = AppBarTheme(
  systemOverlayStyle: SystemUiOverlayStyle(
    statusBarColor: Colors.deepPurple,
    statusBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.light,
  ),
  titleTextStyle: TextStyle(
    color: Colors.white,
    fontSize: 20,
  ),
);

const iconTheme = IconThemeData(
  color: Colors.white,
);
