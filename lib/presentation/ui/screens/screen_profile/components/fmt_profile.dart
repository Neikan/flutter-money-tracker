part of '../screen_profile.dart';

class _FMTProfile extends StatelessWidget {
  final AppProfile profile;

  const _FMTProfile({
    required this.profile,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25.0, bottom: 13.0, left: 25.0),
          child: Row(
            children: [
              _FMTAvatar(avatar: profile.avatar),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(bottom: 13.0),
                    child: Text('skillbox@skillbox.ru'),
                  ),
                  _FMTButtonSignout(),
                ],
              ),
            ],
          ),
        ),
        const _FMTButtonSave(),
      ],
    );
  }
}
