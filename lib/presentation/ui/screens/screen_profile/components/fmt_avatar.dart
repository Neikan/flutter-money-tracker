part of '../screen_profile.dart';

class _FMTAvatar extends StatelessWidget {
  final String? avatar;

  const _FMTAvatar({
    this.avatar,
  });

  @override
  Widget build(BuildContext context) {
    final isAvatar = avatar != null;

    return Container(
      padding: const EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: () {},
        child: CircleAvatar(
          radius: 40.0,
          backgroundColor: colors.grayLight,
          backgroundImage: isAvatar ? NetworkImage(avatar!) : null,
          child: isAvatar
              ? null
              : const Icon(
                  Icons.photo_camera,
                  size: 36,
                  color: colors.gray,
                ),
        ),
      ),
    );
  }
}
