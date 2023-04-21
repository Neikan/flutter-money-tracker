part of '../../screen_summary.dart';

class _FMTButtonAddSpending extends StatelessWidget {
  final TextEditingController controller;
  final AppCategory category;

  const _FMTButtonAddSpending({
    required this.controller,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return FMTButtonElevated(
      onPressed: () {
        BlocProvider.of<BlocSpendings>(context).add(
          BlocSpendingsEventAdd(
            AppSpending(
              id: const Uuid().v4(),
              categoryId: category.id,
              sum: double.tryParse(controller.text) ?? 0.0,
              date: DateTime.now().millisecondsSinceEpoch,
            ),
          ),
        );
      },
      title: labelsButtons[keyButtonAdd]!,
    );
  }
}
