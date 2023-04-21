// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:fmt/presentation/consts/keys.dart';
import 'package:fmt/presentation/consts/translations.dart';
import 'package:fmt/presentation/ui/styles/colors.dart' as colors;
import 'package:fmt/presentation/ui/styles/sizes.dart' as sizes;

class FMTButtonText extends StatelessWidget {
  final String? title;
  final VoidCallback? onCancel;

  const FMTButtonText({
    super.key,
    this.onCancel,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        if (onCancel != null) onCancel!();

        Navigator.pop(context);
      },
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all<Size?>(
          Size(MediaQuery.of(context).size.width, sizes.heightButton),
        ),
      ),
      child: Text(
        title ?? labelsButtons[keyButtonCancel]!,
        style: const TextStyle(color: colors.red),
      ),
    );
  }
}
