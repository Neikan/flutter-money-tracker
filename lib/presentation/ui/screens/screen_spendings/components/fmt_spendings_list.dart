part of '../screen_spendings.dart';

class _FMTSpendingsList extends StatelessWidget {
  final List<AppSpending> spendings;

  const _FMTSpendingsList({
    required this.spendings,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      padding: const EdgeInsets.only(top: 25.0, right: 25.0, left: 25.0),
      itemCount: spendings.length,
      itemBuilder: (_, index) => _FMTSpendingCard(spending: spendings[index]),
    );
  }
}
