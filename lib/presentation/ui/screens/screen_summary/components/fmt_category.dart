part of '../screen_summary.dart';

class _FMTCategory extends StatelessWidget {
  final AppCategory category;

  const _FMTCategory({
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    void handleAdd() => GlobalNavigator.showAlert(
          FMTDialogSpending(category: category),
        );

    void handleRequestToRemove() => BlocProvider.of<BlocCategories>(context)
        .add(BlocCategoriesEventRequestToRemove(category));

    void handleGoTo() {
      final arguments = {keyArgsCategory: category};

      Navigator.pushNamed(
        context,
        routeSpendings,
        arguments: arguments,
      );
    }

    void handleConfirmToRemove() => GlobalNavigator.showAlert(
          _FMTDialogCategoryRemove(category: category),
        );

    return FMTCard(
      title: FMTHeroText(
        tag: category.id,
        title: category.name,
      ),
      subtitle: labelsCategories[keySpendingAdd],
      trailing: IconButton(
        onPressed: handleGoTo,
        color: parseColor(category.color),
        icon: const Icon(Icons.arrow_forward_ios_rounded),
      ),
      onAdd: handleAdd,
      onRequestToRemove: handleRequestToRemove,
      onConfirmToRemove: handleConfirmToRemove,
      isRequestToRemove: category.isRequestToRemove,
    );
  }
}
