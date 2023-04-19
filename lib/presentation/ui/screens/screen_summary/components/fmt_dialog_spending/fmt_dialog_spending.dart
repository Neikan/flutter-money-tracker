part of '../../screen_summary.dart';

class FMTDialogSpending extends StatelessWidget {
  final AppCategory category;

  FMTDialogSpending({
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
            _FMTButtonAddSpending(
              controller: _controller,
              category: category,
            ),
            const _FMTButtonCancel(),
          ],
        ),
      ),
    );
  }
}
