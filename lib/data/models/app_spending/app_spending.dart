// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_spending.freezed.dart';
part 'app_spending.g.dart';

@freezed
class AppSpending with _$AppSpending {
  const factory AppSpending({
    required String id,
    required String categoryId,
    required double sum,
    required int date,
    bool? isRequestToRemove,
  }) = _AppSpending;

  factory AppSpending.fromJson(Map<String, dynamic> json) =>
      _$AppSpendingFromJson(json);
}
