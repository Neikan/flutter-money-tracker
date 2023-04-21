part of '../../screen_summary.dart';

class _FMTDialogCategoryRemove extends StatelessWidget {
  final AppCategory category;

  const _FMTDialogCategoryRemove({
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
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
        _FMTButtonCategoryRemove(category: category),
        const _FMTButtonCancel(),
      ],
    );
  }
}
