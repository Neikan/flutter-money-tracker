// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:fmt/presentation/consts/enums.dart';
import 'package:fmt/presentation/consts/routes.dart';
import 'package:fmt/presentation/consts/translations.dart';

class FMTBottonBar extends StatelessWidget {
  final TabBottomBar tab;

  const FMTBottonBar({
    super.key,
    required this.tab,
  });

  @override
  Widget build(BuildContext context) {
    final currentIndex = TabBottomBar.values.indexOf(tab);

    void handleTap(int index) {
      if (index == 0 && currentIndex != 0) {
        Navigator.pushReplacementNamed(context, routeSummary);
      }

      if (index == 1 && currentIndex != 1) {
        Navigator.pushReplacementNamed(context, routeProfile);
      }
    }

    return BottomNavigationBar(
      onTap: handleTap,
      currentIndex: currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.credit_card),
          label: labelsBottomBar[TabBottomBar.expenses],
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.person),
          label: labelsBottomBar[TabBottomBar.profile],
        )
      ],
    );
  }
}
