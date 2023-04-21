part of '../../screen_categories.dart';

class _FMTCategoryDialogRemove extends StatelessWidget {
  final AppCategory category;

  const _FMTCategoryDialogRemove({
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    void handleCancel() {
      BlocProvider.of<BlocCategories>(context).add(
        BlocCategoriesEventCancelToRemove(category),
      );
    }

    return FMTDialogWrapper(
      title: Text.rich(
        TextSpan(
          children: [
            TextSpan(text: labelsDialogCategoryRemove[keyTitle]!),
            TextSpan(
              text: category.name,
              style: const TextStyle(color: colors.brand),
            ),
            const TextSpan(text: '?'),
          ],
        ),
        textAlign: TextAlign.center,
      ),
      actions: [
        _FMTCategoryButtonRemove(category: category),
        FMTButtonText(onCancel: handleCancel),
      ],
      onClose: handleCancel,
    );
  }
}
