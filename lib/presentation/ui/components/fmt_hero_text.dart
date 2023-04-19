// Flutter imports:
import 'package:flutter/material.dart';

class FMTHeroText extends StatelessWidget {
  final String tag, title;
  final TextStyle? style;

  const FMTHeroText({
    super.key,
    required this.tag,
    required this.title,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag,
      child: Material(
        color: Colors.transparent,
        child: Text(title, style: style),
      ),
    );
  }
}
