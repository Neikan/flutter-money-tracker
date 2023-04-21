part of '../../screen_spendings.dart';

class _FMTSpendingButtonRemove extends StatelessWidget {
  final AppSpending spending;

  const _FMTSpendingButtonRemove({
    required this.spending,
  });

  @override
  Widget build(BuildContext context) {
    return FMTButtonElevated(
      onPressed: () {
        BlocProvider.of<BlocSpendings>(context).add(
          BlocSpendingsEventConfirmToRemove(spending),
        );
      },
      title: labelsButtons[keyButtonConfirm]!,
    );
  }
}
