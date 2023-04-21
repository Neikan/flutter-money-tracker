part of '../screen_categories.dart';

class _FMTCategoriesDiagram extends StatelessWidget {
  final List<AppCategory> categories;

  const _FMTCategoriesDiagram({
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    if (categories.isEmpty) {
      return Container(
        height: 240.0,
        color: colors.grayLight,
        child: const Center(
          child: Text('За Апрель нет расходов'),
        ),
      );
    }

    Map<AppCategory, double> mapCosts = {};

    for (final category in categories) {
      mapCosts.addAll({category: 100.0});
    }

    return Container(
      height: 240.0,
      color: colors.grayLight,
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: PieChart(PieChartData(sections: getSections(mapCosts))),
    );
  }

  List<PieChartSectionData> getSections(Map<AppCategory, double> mapCosts) {
    int index = -1;

    return mapCosts
        .map<int, PieChartSectionData>((category, sum) {
          index++;

          final value = PieChartSectionData(
            radius: 60.0,
            color: parseColor(category.color),
            value: sum,
            titleStyle: const TextStyle(color: Colors.white),
            title: category.name,
            borderSide: const BorderSide(width: 0),
          );

          return MapEntry(index, value);
        })
        .values
        .toList();
  }
}
