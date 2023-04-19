// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:fmt/data/models/app_spending/app_spending.dart';

part 'bloc_spendings_state.freezed.dart';

@freezed
class BlocSpendingsState with _$BlocSpendingsState {
  const factory BlocSpendingsState.loading() = BlocSpendingsStateLoading;

  const factory BlocSpendingsState.loaded(List<AppSpending> spendings) =
      BlocSpendingsStateLoaded;

  const factory BlocSpendingsState.error(String error) =
      BlocSpendingsStateError;
}
