part of '../screen_spendings.dart';

class _FMTSpending extends StatelessWidget {
  final AppSpending spending;

  const _FMTSpending({
    required this.spending,
  });

  @override
  Widget build(BuildContext context) {
    void handleRequestToRemove() => BlocProvider.of<BlocSpendings>(context)
        .add(BlocSpendingsEventRequestToRemove(spending));

    return FMTCard(
      title: Text(
        '${spending.sum}',
        style: const TextStyle(fontSize: 15.0),
      ),
      subtitle: getFormattedDate(spending.date),
      onRequestToRemove: handleRequestToRemove,
      isRequestToRemove: spending.isRequestToRemove,
    );
  }
}
