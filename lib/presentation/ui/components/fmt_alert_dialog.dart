// Flutter imports:
import 'package:flutter/material.dart';

class FMTDialogWrapper extends StatelessWidget {
  final Widget title, content;

  const FMTDialogWrapper({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.all(25.0),
      contentPadding: const EdgeInsets.only(
        top: 25.0,
        right: 25.0,
        bottom: 12.0,
        left: 25.0,
      ),
      title: title,
      content: content,
    );
  }
}
