part of '../../screen_categories.dart';

class _FMTCategoryButtonAdd extends StatelessWidget {
  final TextEditingController controllerTitle;
  final TextEditingController controllerColor;

  const _FMTCategoryButtonAdd({
    required this.controllerTitle,
    required this.controllerColor,
  });

  @override
  Widget build(BuildContext context) {
    return FMTButtonElevated(
      onPressed: () {
        BlocProvider.of<BlocCategories>(context).add(BlocCategoriesEventAdd(
          AppCategory(
            id: '3',
            name: controllerTitle.text,
            color: controllerColor.text,
          ),
        ));
      },
      title: labelsButtons[keyButtonAdd]!,
    );
  }
}
