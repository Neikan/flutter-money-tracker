part of '../../screen_categories.dart';

class _FMTCategoryButtonRemove extends StatelessWidget {
  final AppCategory category;

  const _FMTCategoryButtonRemove({
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return FMTButtonElevated(
      onPressed: () {
        BlocProvider.of<BlocCategories>(context).add(
          BlocCategoriesEventConfirmToRemove(category),
        );
      },
      title: labelsButtons[keyButtonConfirm]!,
    );
  }
}
