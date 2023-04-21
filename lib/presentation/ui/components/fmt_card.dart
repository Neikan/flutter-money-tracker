// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:fmt/presentation/consts/keys.dart';
import 'package:fmt/presentation/consts/translations.dart';
import 'package:fmt/presentation/ui/styles/colors.dart' as colors;
import 'package:fmt/presentation/ui/styles/sizes.dart' as sizes;

class FMTCard extends StatelessWidget {
  final bool isRequestToRemove;
  final Widget? title, trailing;
  final String? subtitle;
  final VoidCallback? onAdd, onRequestToRemove, onConfirmToRemove;

  const FMTCard({
    super.key,
    required this.isRequestToRemove,
    this.onRequestToRemove,
    this.onAdd,
    this.onConfirmToRemove,
    this.subtitle,
    this.title,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    final subtitleWidget = subtitle != null
        ? Text(
            subtitle!,
            style: const TextStyle(fontSize: 10, color: colors.gray),
          )
        : null;

    return Stack(
      children: [
        Card(
          child: SizedBox(
            height: sizes.heightCard,
            child: ListTile(
              title: title,
              subtitle: subtitleWidget,
              trailing: trailing,
              onTap: onAdd,
              onLongPress: onRequestToRemove,
            ),
          ),
        ),
        if (isRequestToRemove)
          Positioned(
            right: 0,
            child: ElevatedButton(
              onPressed: onConfirmToRemove,
              style: ButtonStyle(
                padding:
                    MaterialStateProperty.all<EdgeInsets?>(EdgeInsets.zero),
                backgroundColor: MaterialStateProperty.all<Color?>(colors.red),
                fixedSize: MaterialStateProperty.all<Size?>(
                  const Size(
                    sizes.widthButtonRemove,
                    sizes.heightCard,
                  ),
                ),
                shape: MaterialStateProperty.all<OutlinedBorder?>(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                  ),
                ),
              ),
              child: Text(
                labelsButtons[keyButtonRemove]!,
                style: const TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
