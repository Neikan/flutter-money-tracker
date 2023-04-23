// Flutter imports:
import 'package:flutter/material.dart';

class FMTDialogWrapper extends StatelessWidget {
  final Widget title;
  final Widget? content;
  final List<Widget>? actions;
  final VoidCallback? onClose;
  final EdgeInsets? titlePadding, contentPadding, actionsPadding;

  const FMTDialogWrapper({
    super.key,
    required this.title,
    this.content,
    this.actions,
    this.titlePadding,
    this.contentPadding,
    this.actionsPadding,
    this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: AlertDialog(
        insetPadding: const EdgeInsets.all(25.0),
        titlePadding: titlePadding,
        contentPadding: contentPadding ?? const EdgeInsets.all(25.0),
        actionsPadding: actionsPadding ??
            const EdgeInsets.only(
              right: 25.0,
              bottom: 6.0,
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
