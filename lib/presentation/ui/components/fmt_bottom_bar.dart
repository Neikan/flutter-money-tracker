// Flutter imports:
import 'package:flutter/material.dart';
import 'package:fmt/presentation/consts/enums.dart';
import 'package:fmt/presentation/consts/translations.dart';

class FMTBottonBar extends StatelessWidget {
  final TabBottomBar tab;

  const FMTBottonBar({
    super.key,
    required this.tab,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) {},
      currentIndex: TabBottomBar.values.indexOf(tab),
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
