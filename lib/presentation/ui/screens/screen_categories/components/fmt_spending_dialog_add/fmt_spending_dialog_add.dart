part of '../../screen_categories.dart';

class FMTSpendingDialogAdd extends StatelessWidget {
  final AppCategory category;

  FMTSpendingDialogAdd({
    super.key,
    required this.category,
  });

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return FMTDialogWrapper(
      title: Text(labelsDialogSpending[keyTitle]!),
      content: Form(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FMTFieldText(
              controller: _controller,
              labelText: labelsDialogSpending[keyFieldSum],
              fieldStyle: AppFieldStyle.bordered,
              textInputType: TextInputType.number,
            ),
          ],
        ),
      ),
      actions: [
        _FMTSpendingButtonAdd(
          controller: _controller,
          category: category,
        ),
        const FMTButtonText(),
      ],
    );
  }
}
