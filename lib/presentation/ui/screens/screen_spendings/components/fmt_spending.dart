part of '../screen_spendings.dart';

class _FMTSpending extends StatelessWidget {
  final AppSpending spending;

  const _FMTSpending({
    required this.spending,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25.0),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const [
          BoxShadow(
            color: colors.shadow,
            spreadRadius: 0.0,
            blurRadius: 13.0,
            offset: Offset(0.0, 4.0),
          ),
        ],
      ),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        title: Text(
          '${spending.sum}',
        ),
        subtitle: Text(
          getFormattedDate(spending.date),
          style: const TextStyle(
            fontSize: 10,
            color: colors.gray,
          ),
        ),
      ),
    );
  }
}
