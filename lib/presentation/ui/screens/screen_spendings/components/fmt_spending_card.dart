part of '../screen_spendings.dart';

class _FMTSpendingCard extends StatelessWidget {
  final AppSpending spending;

  const _FMTSpendingCard({
    required this.spending,
  });

  @override
  Widget build(BuildContext context) {
    void handleRequestToRemove() => BlocProvider.of<BlocSpendings>(context)
        .add(BlocSpendingsEventRequestToRemove(spending));

    void handleConfirmToRemove() => GlobalNavigator.showAlert(
          _FMTSpendingDialogRemove(spending: spending),
        );

    void handleCancelToRemove() => BlocProvider.of<BlocSpendings>(context)
        .add(BlocSpendingsEventCancelToRemove(spending));

    return FMTCard(
      title: Text(
        '${spending.sum}',
        style: const TextStyle(fontSize: 15.0),
      ),
      subtitle: getFormattedDate(spending.date),
      isRequestToRemove: spending.isRequestToRemove,
      onRequestToRemove: !spending.isRequestToRemove
          ? handleRequestToRemove
          : handleCancelToRemove,
      onConfirmToRemove: handleConfirmToRemove,
    );
  }
}
