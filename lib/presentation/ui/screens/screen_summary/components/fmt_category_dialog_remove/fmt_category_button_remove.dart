part of '../../screen_summary.dart';

class _FMTButtonCategoryRemove extends StatelessWidget {
  final AppCategory category;

  const _FMTButtonCategoryRemove({
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return FMTButtonElevated(
      onPressed: () {
        BlocProvider.of<BlocCategories>(context).add(
          BlocCategoriesEventRemove(category),
        );
      },
      title: labelsButtons[keyButtonConfirm]!,
    );
  }
}
