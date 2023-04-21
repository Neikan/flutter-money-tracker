// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_category.freezed.dart';
part 'app_category.g.dart';

@freezed
class AppCategory with _$AppCategory {
  const factory AppCategory({
    required String id,
    required String name,
    required String color,
    @Default(false) bool isRequestToRemove,
  }) = _AppCategory;

  factory AppCategory.fromJson(Map<String, dynamic> json) =>
      _$AppCategoryFromJson(json);
}
