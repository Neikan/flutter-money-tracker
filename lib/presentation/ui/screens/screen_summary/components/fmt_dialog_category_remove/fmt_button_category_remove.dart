part of '../../screen_summary.dart';

class _FMTButtonCategoryRemove extends StatelessWidget {
  final AppCategory category;

  const _FMTButtonCategoryRemove({
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, bottom: 6.0),
      child: ElevatedButton(
        onPressed: () {
          BlocProvider.of<BlocCategories>(context).add(
            BlocCategoriesEventRemove(category),
          );

          Navigator.pop(context);
        },
        style: ButtonStyle(
          fixedSize: MaterialStateProperty.all<Size?>(
            Size(MediaQuery.of(context).size.width, sizes.heightButton),
          ),
        ),
        child: Text(labelsButtons[keyButtonConfirm]!),
      ),
    );
  }
}
