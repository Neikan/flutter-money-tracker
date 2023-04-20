part of '../screen_summary.dart';

class _FMTCategory extends StatelessWidget {
  final AppCategory category;

  const _FMTCategory({
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    void handleTap() => GlobalNavigator.showAlert(
          FMTDialogSpending(category: category),
        );

    void handlePressed() {
      final arguments = {keyArgsCategory: category};

      Navigator.pushNamed(
        context,
        routeSpendings,
        arguments: arguments,
      );
    }

    return FMTCard(
      title: FMTHeroText(
        tag: category.id,
        title: category.name,
      ),
      subtitle: labelsCategories[keySpendingAdd],
      trailing: IconButton(
        onPressed: handlePressed,
        color: parseColor(category.color),
        icon: const Icon(Icons.arrow_forward_ios_rounded),
      ),
      onTap: handleTap,
    );
  }
}
