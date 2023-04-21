part of '../screen_summary.dart';

class _FMTCategoriesList extends StatelessWidget {
  final List<AppCategory> categories;

  const _FMTCategoriesList({
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _FMTCategoriesDiagram(categories: categories),
        Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            padding: const EdgeInsets.only(top: 25.0, right: 25.0, left: 25.0),
            itemCount: categories.length,
            itemBuilder: (_, index) =>
                _FMTCategoryCard(category: categories[index]),
          ),
        ),
      ],
    );
  }
}
