// Flutter imports:
import 'package:flutter/material.dart';
import 'package:fmt/presentation/consts/enums.dart';

import 'package:fmt/presentation/ui/styles/colors.dart' as colors;

// Project imports:
import 'package:fmt/presentation/consts/keys.dart';
import 'package:fmt/presentation/consts/translations.dart';
import 'package:fmt/presentation/ui/components/fmt_app_bar.dart';
import 'package:fmt/presentation/ui/components/fmt_bottom_bar.dart';

part 'components/fmt_avatar.dart';
part 'components/fmt_button_save.dart';
part 'components/fmt_button_signout.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FMTAppBar(
        title: labelsProfile[keyTitle]!,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 25.0, bottom: 13.0, left: 25.0),
              child: Row(
                children: [
                  const _FMTAvatar(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(bottom: 13.0),
                        child: Text('skillbox@skillbox.ru'),
                      ),
                      _FMTButtonSignout(),
                    ],
                  ),
                ],
              ),
            ),
            const _FMTButtonSave(),
          ],
        ),
      ),
      bottomNavigationBar: const FMTBottonBar(tab: TabBottomBar.profile),
    );
  }
}
