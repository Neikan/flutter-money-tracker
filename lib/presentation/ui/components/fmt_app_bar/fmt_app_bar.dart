// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:fmt/data/models/app_date/app_date.dart';
import 'package:fmt/presentation/ui/components/fmt_app_bar/fmt_app_bar_title.dart';
import 'package:fmt/presentation/ui/styles/colors.dart' as colors;
import 'package:fmt/presentation/ui/styles/themes.dart';

const _sizeAppBar = 56.0;

class FMTAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color? color;
  final AppDate? date;
  final List<Widget>? actions;
  final Widget? leading;
  final String? tag, title;
  final Widget? titleWidget;

  const FMTAppBar({
    super.key,
    this.color = colors.brand,
    this.date,
    this.actions,
    this.leading,
    this.tag,
    this.title,
    this.titleWidget,
  });

  @override
  Size get preferredSize => const Size.fromHeight(_sizeAppBar);

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: color,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
      ),
      backgroundColor: color,
      centerTitle: true,
      title: titleWidget ??
          FMTAppBarTitle(
            date: date,
            tag: tag,
            title: title,
          ),
      leading: leading,
      actions: actions,
      titleTextStyle: appBarTitleTheme,
    );
  }
}
