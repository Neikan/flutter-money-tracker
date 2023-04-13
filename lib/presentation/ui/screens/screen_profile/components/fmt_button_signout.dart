part of '../screen_profile.dart';

class _FMTButtonSignout extends StatelessWidget {
  const _FMTButtonSignout();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all<Size?>(
          const Size(145.0, 50.0),
        ),
      ),
      onPressed: () {},
      child: Text(labelsProfile[keyButtonSignout]!),
    );
  }
}
