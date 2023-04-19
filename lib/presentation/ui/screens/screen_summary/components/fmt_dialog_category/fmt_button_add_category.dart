part of '../../screen_summary.dart';

class _FMTButtonAdd extends StatelessWidget {
  final TextEditingController controllerTitle;
  final TextEditingController controllerColor;

  const _FMTButtonAdd({
    required this.controllerTitle,
    required this.controllerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: ElevatedButton(
        onPressed: () {
          context.read<BlocCategories>().add(
                BlocCategoriesEventAdd(
                  AppCategory(
                    id: '3',
                    name: controllerTitle.text,
                    color: controllerColor.text,
                  ),
                ),
              );

          Navigator.pop(context);
        },
        style: ButtonStyle(
          fixedSize: MaterialStateProperty.all<Size?>(
            Size(MediaQuery.of(context).size.width, sizes.heightButton),
          ),
        ),
        child: Text(labelsButtons[keyButtonAdd]!),
      ),
    );
  }
}
