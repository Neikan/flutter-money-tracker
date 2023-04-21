part of '../screen_categories.dart';

class _FMTCategoryCard extends StatelessWidget {
  final AppCategory category;

  const _FMTCategoryCard({
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    void handleAdd() => GlobalNavigator.showAlert(
          FMTSpendingDialogAdd(category: category),
        );

    void handleRequestToRemove() => BlocProvider.of<BlocCategories>(context)
        .add(BlocCategoriesEventRequestToRemove(category));

    void handleConfirmToRemove() => GlobalNavigator.showAlert(
          _FMTCategoryDialogRemove(category: category),
        );

    void handleCancelToRemove() => BlocProvider.of<BlocCategories>(context)
        .add(BlocCategoriesEventCancelToRemove(category));

    void handleGoTo() {
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
        onPressed: handleGoTo,
        color: parseColor(category.color),
        icon: const Icon(Icons.arrow_forward_ios_rounded),
      ),
      onAdd: handleAdd,
      onRequestToRemove: !category.isRequestToRemove
          ? handleRequestToRemove
          : handleCancelToRemove,
      onConfirmToRemove: handleConfirmToRemove,
      isRequestToRemove: category.isRequestToRemove,
    );
  }
}
