part of '../../screen_summary.dart';

class _FMTDialogCategoryAdd extends StatelessWidget {
  final TextEditingController _controllerTitle = TextEditingController();
  final TextEditingController _controllerColor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return FMTDialogWrapper(
      title: Text(
        labelsDialogCategory[keyTitle]!,
        textAlign: TextAlign.center,
      ),
      content: Form(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FMTFieldText(
              controller: _controllerTitle,
              labelText: labelsDialogCategory[keyFieldName],
            ),
            FMTFieldText(
              padding: const EdgeInsets.only(top: 6.0, bottom: 15.0),
              controller: _controllerColor,
              labelText: labelsDialogCategory[keyFieldColor],
              maxLength: 6,
              withCounter: true,
            ),
          ],
        ),
      ),
      actions: [
        _FMTButtonAdd(
          controllerTitle: _controllerTitle,
          controllerColor: _controllerColor,
        ),
        const _FMTButtonCancel(),
      ],
    );
  }
}
