// Flutter imports:
import 'package:flutter/material.dart';
import 'package:fmt/presentation/consts/enums.dart';
import 'package:fmt/presentation/consts/translations.dart';

class FMTBottonBar extends StatelessWidget {
  const FMTBottonBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) {},
      currentIndex: 1,
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
