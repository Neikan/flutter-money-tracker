// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:fmt/presentation/ui/styles/colors.dart' as colors;

final defaultTheme = ThemeData(
  colorScheme: const ColorScheme.light(
    primary: colors.base,
  ),
  fontFamily: 'SF UI Display',
  appBarTheme: appBarTheme,
  primaryColor: Colors.white,
  // primarySwatch: Colors.deepPurple,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  iconTheme: iconTheme,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      fontSize: 17.0,
      height: 1.0,
    ),
    bodySmall: TextStyle(
      fontSize: 17.0,
      height: 1.0,
    ),
    bodyMedium: TextStyle(
      fontSize: 17.0,
      height: 1.0,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(
          fontSize: 17.0,
          height: 1.0,
        ),
      ),
      shape: MaterialStateProperty.all<OutlinedBorder?>(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(EdgeInsets.zero),
      textStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(
          fontSize: 17.0,
          height: 1.0,
        ),
      ),
    ),
  ),
);

const appBarTheme = AppBarTheme(
  systemOverlayStyle: SystemUiOverlayStyle(
    statusBarColor: colors.base,
    statusBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.light,
  ),
  titleTextStyle: TextStyle(
    color: Colors.white,
    fontSize: 24,
    fontWeight: FontWeight.w700,
  ),
);

const iconTheme = IconThemeData(
  color: Colors.white,
);
