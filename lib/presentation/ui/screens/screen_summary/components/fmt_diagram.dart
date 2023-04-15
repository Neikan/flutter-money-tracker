part of '../screen_summary.dart';

class FMTDiagram extends StatelessWidget {
  final List<AppCategory> categories;

  const FMTDiagram({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240.0,
      color: colors.grayLight,
      child: const Center(
        child: Text('За Апрель нет расходов'),
      ),
    );
  }
}
