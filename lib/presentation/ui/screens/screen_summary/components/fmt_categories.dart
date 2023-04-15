part of '../screen_summary.dart';

class _FMTCategories extends StatelessWidget {
  final List<AppCategory> categories;

  const _FMTCategories({
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FMTDiagram(categories: categories),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(25.0),
            itemCount: categories.length,
            itemBuilder: (context, index) =>
                _FMTCategory(category: categories[index]),
          ),
        ),
      ],
    );
  }
}
