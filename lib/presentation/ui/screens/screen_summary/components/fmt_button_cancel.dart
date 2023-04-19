part of '../screen_summary.dart';

class _FMTButtonCancel extends StatelessWidget {
  const _FMTButtonCancel();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.pop(context),
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all<Size?>(
          Size(MediaQuery.of(context).size.width, sizes.heightButton),
        ),
      ),
      child: Text(
        labelsButtons[keyButtonCancel]!,
        style: const TextStyle(color: colors.red),
      ),
    );
  }
}
