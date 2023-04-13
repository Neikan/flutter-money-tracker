// Project imports:
import 'package:fmt/data/models/app_profile/app_profile.dart';

abstract class RepositoryProfile {
  const RepositoryProfile();

  Future<AppProfile> getData();
}
