part of '../../screen_categories.dart';

class _FMTSpendingButtonAdd extends StatelessWidget {
  final TextEditingController controller;
  final AppCategory category;

  const _FMTSpendingButtonAdd({
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
