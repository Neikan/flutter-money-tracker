// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:fmt/data/models/app_category/app_category.dart';

part 'bloc_categories_state.freezed.dart';

@freezed
class BlocCategoriesState with _$BlocCategoriesState {
  const factory BlocCategoriesState.loading() = BlocCategoriesStateLoading;

  const factory BlocCategoriesState.loaded(List<AppCategory> categories) =
      BlocCategoriesStateLoaded;

  const factory BlocCategoriesState.error(String error) =
      BlocCategoriesStateError;
}
