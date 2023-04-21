// Flutter imports:
import 'package:flutter/material.dart';

class FMTDialogWrapper extends StatelessWidget {
  final Widget title;
  final Widget? content;
  final List<Widget>? actions;
  final VoidCallback? onClose;

  const FMTDialogWrapper({
    super.key,
    required this.title,
    this.content,
    this.actions,
    this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: AlertDialog(
        insetPadding: const EdgeInsets.all(25.0),
        contentPadding: const EdgeInsets.only(
          top: 25.0,
          right: 25.0,
          bottom: 12.0,
          left: 25.0,
        ),
        title: title,
        content: content,
        actions: actions,
      ),
      onWillPop: () async {
        if (onClose != null) onClose!();

        Navigator.pop(context);

        return false;
      },
    );
  }
}
