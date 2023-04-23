// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:fmt/presentation/ui/styles/colors.dart' as colors;

const double _appLoaderBasePadding = 8.0;
const double _appLoaderBaseStrokeWidth = 4.0;

class FMTLoader extends StatelessWidget {
  final Color? color;
  final double? padding, size, strokeWidth;

  const FMTLoader({
    super.key,
    this.color = colors.brand,
    this.padding,
    this.size,
    this.strokeWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(padding ?? _appLoaderBasePadding),
        child: SizedBox(
          height: size,
          width: size,
          child: CircularProgressIndicator(
            color: color,
            strokeWidth: strokeWidth ?? _appLoaderBaseStrokeWidth,
          ),
        ),
      ),
    );
  }
}
