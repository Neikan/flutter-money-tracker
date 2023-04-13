// Project imports:
import 'package:fmt/data/models/app_profile/app_profile.dart';
import 'package:fmt/data/repositories/repository_profile/repository_profile.dart';

class RepositoryProfileImp extends RepositoryProfile {
  const RepositoryProfileImp();

  @override
  Future<AppProfile> getData() async {
    return const AppProfile(
      avatar: 'https://neikan.pro/img/foto/me-desktop@1x.webp',
      email: 'skillbox@skillbox.ru',
    );
  }
}
