part of '../screen_profile.dart';

class _FMTAvatar extends StatelessWidget {
  final String? image;

  const _FMTAvatar({
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: () {},
        child: CircleAvatar(
          radius: 40.0,
          backgroundColor: colors.grayLight,
          backgroundImage: image != null ? NetworkImage(image!) : null,
          child: const Icon(
            Icons.photo_camera,
            size: 36,
            color: colors.gray,
          ),
        ),
      ),
    );
  }
}
