part of '../screen_spendings.dart';

class _FMTSpendings extends StatelessWidget {
  final List<AppSpending> spendings;

  const _FMTSpendings({
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
      itemBuilder: (_, index) => _FMTSpending(spending: spendings[index]),
    );
  }
}
