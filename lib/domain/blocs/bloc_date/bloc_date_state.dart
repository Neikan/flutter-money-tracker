// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:fmt/data/models/app_date/app_date.dart';

part 'bloc_date_state.freezed.dart';

@freezed
class BlocDateState with _$BlocDateState {
  const factory BlocDateState.loading() = BlocDateStateLoading;

  const factory BlocDateState.loaded(AppDate date) = BlocDateStateLoaded;

  const factory BlocDateState.error(String error) = BlocDateStateError;
}
