part of '../../screen_summary.dart';

class _FMTButtonCategoryAdd extends StatelessWidget {
  final TextEditingController controllerTitle;
  final TextEditingController controllerColor;

  const _FMTButtonCategoryAdd({
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
