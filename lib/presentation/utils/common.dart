// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:fmt/presentation/ui/styles/colors.dart' as colors;

Color parseColor(String? color) {
  int? colorValue;

  if (color != null) {
    colorValue = int.tryParse('0xff$color');
  }

  return colorValue != null ? Color(colorValue) : colors.brand;
}
