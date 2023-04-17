part of '../screen_profile.dart';

class _FMTButtonSave extends StatelessWidget {
  const _FMTButtonSave();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 23.0),
      child: TextButton(
        onPressed: () {},
        child: Text(labelsButtons[keyButtonSave]!),
      ),
    );
  }
}
