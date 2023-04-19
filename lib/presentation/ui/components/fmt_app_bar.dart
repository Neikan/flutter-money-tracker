// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:fmt/presentation/ui/components/fmt_hero_text.dart';
import 'package:fmt/presentation/ui/styles/colors.dart' as colors;
import 'package:fmt/presentation/ui/styles/themes.dart';

const _sizeAppBar = 56.0;

class FMTAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color? color;
  final List<Widget>? actions;
  final Widget? leading;
  final String? tag;

  const FMTAppBar({
    super.key,
    required this.title,
    this.color = colors.brand,
    this.actions,
    this.leading,
    this.tag,
  });

  @override
  Size get preferredSize => const Size.fromHeight(_sizeAppBar);

  @override
  AppBar build(BuildContext context) {
    final titleWidget = tag != null
        ? FMTHeroText(tag: tag!, title: title, style: appBarTitleTheme)
        : Text(title);

    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: color,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
      ),
      backgroundColor: color,
      centerTitle: true,
      title: titleWidget,
      leading: leading,
      actions: actions,
      titleTextStyle: appBarTitleTheme,
    );
  }
}
