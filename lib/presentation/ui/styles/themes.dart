// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:fmt/presentation/ui/styles/colors.dart' as colors;

final defaultTheme = ThemeData(
  colorScheme: const ColorScheme.light(
    primary: colors.brand,
  ),
  fontFamily: 'SF UI Display',
  primaryColor: Colors.white,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  iconTheme: _iconTheme,
  textTheme: _textTheme,
  elevatedButtonTheme: _elevatedButtonTheme,
  iconButtonTheme: _iconButtonTheme,
  textButtonTheme: _textButtonTheme,
  listTileTheme: _listTileTheme,
  dialogTheme: _dialogTheme,
);

const appBarTitleTheme = TextStyle(
  color: Colors.white,
  fontSize: 24,
  fontWeight: FontWeight.w700,
);

const _iconTheme = IconThemeData(
  color: Colors.white,
);

final _elevatedButtonTheme = ElevatedButtonThemeData(
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
);

final _iconButtonTheme = IconButtonThemeData(
  style: ButtonStyle(
    iconColor: MaterialStateProperty.all<Color?>(Colors.white),
  ),
);

final _textButtonTheme = TextButtonThemeData(
  style: ButtonStyle(
    padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(EdgeInsets.zero),
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
);

const _listTileTheme = ListTileThemeData(
  contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 0),
);

const _textTheme = TextTheme(
  bodyLarge: TextStyle(
    fontSize: 17.0,
    height: 1.0,
  ),
  bodyMedium: TextStyle(
    fontSize: 15.0,
    height: 1.1,
  ),
  bodySmall: TextStyle(
    fontSize: 15.0,
    height: 1.0,
  ),
);

final _dialogTheme = DialogTheme(
  shadowColor: Colors.black.withOpacity(0.12),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
  titleTextStyle: const TextStyle(
    color: Colors.black,
    fontSize: 20.0,
    fontWeight: FontWeight.w700,
  ),
);
