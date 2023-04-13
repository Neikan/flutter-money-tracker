// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:fmt/data/models/app_profile/app_profile.dart';

part 'bloc_profile_state.freezed.dart';

@freezed
class BlocProfileState with _$BlocProfileState {
  const factory BlocProfileState.loading() = BlocProfileStateLoading;

  const factory BlocProfileState.loaded(AppProfile profile) =
      BlocProfileStateLoaded;

  const factory BlocProfileState.error(String error) =
      BlocProfileStateError;
}
