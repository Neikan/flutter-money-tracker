// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:fmt/presentation/ui/styles/colors.dart' as colors;
import 'package:fmt/presentation/ui/styles/sizes.dart' as sizes;

class FMTCard extends StatelessWidget {
  final Widget? title, trailing;
  final String? subtitle;
  final VoidCallback? onTap, onLongTap;

  const FMTCard({
    super.key,
    this.onLongTap,
    this.onTap,
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

    return Card(
      child: SizedBox(
        height: sizes.heightCard,
        child: ListTile(
          title: title,
          subtitle: subtitleWidget,
          trailing: trailing,
          onTap: onTap,
          onLongPress: onLongTap,
        ),
      ),
    );
  }
}
