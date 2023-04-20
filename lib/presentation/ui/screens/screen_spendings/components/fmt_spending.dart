part of '../screen_spendings.dart';

class _FMTSpending extends StatelessWidget {
  final AppSpending spending;

  const _FMTSpending({
    required this.spending,
  });

  @override
  Widget build(BuildContext context) {
    void handleLongTap() => BlocProvider.of<BlocSpendings>(context)
        .add(BlocSpendingsEventRequestToRemove(spending));

    return FMTCard(
      title: Text('${spending.sum}'),
      subtitle: getFormattedDate(spending.date),
      onLongTap: handleLongTap,
    );
  }
}
