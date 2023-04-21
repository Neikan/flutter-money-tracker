// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:fmt/presentation/ui/styles/sizes.dart' as sizes;

class FMTButtonElevated extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final EdgeInsetsGeometry? padding;

  const FMTButtonElevated({
    super.key,
    required this.onPressed,
    required this.title,
    this.padding = const EdgeInsets.only(bottom: 6.0),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: ElevatedButton(
        onPressed: () {
          onPressed();

          Navigator.pop(context);
        },
        style: ButtonStyle(
          fixedSize: MaterialStateProperty.all<Size?>(
            Size(MediaQuery.of(context).size.width, sizes.heightButton),
          ),
        ),
        child: Text(title),
      ),
    );
  }
}
