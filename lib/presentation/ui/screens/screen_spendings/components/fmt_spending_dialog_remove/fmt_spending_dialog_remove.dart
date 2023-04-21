part of '../../screen_spendings.dart';

class _FMTSpendingDialogRemove extends StatelessWidget {
  final AppSpending spending;

  const _FMTSpendingDialogRemove({
    required this.spending,
  });

  @override
  Widget build(BuildContext context) {
    void handleCancel() {
      BlocProvider.of<BlocSpendings>(context).add(
        BlocSpendingsEventCancelToRemove(spending),
      );
    }

    return FMTDialogWrapper(
      title: Text(
        labelsSpendingDialogRemove[keyTitle]!,
        textAlign: TextAlign.center,
      ),
      actions: [
        _FMTSpendingButtonRemove(spending: spending),
        FMTButtonText(onCancel: handleCancel),
      ],
      onClose: handleCancel,
    );
  }
}
