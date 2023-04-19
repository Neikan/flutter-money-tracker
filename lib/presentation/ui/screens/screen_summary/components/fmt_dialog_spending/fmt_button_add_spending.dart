part of '../../screen_summary.dart';

class _FMTButtonAddSpending extends StatelessWidget {
  final TextEditingController controller;
  final AppCategory category;

  const _FMTButtonAddSpending({
    required this.controller,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, bottom: 6.0),
      child: ElevatedButton(
        onPressed: () {
          context.read<BlocSpendings>().add(
                BlocSpendingsEventAdd(
                  AppSpending(
                    id: const Uuid().v4(),
                    categoryId: category.id,
                    sum: double.tryParse(controller.text) ?? 0.0,
                    date: DateTime.now().millisecondsSinceEpoch,
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
