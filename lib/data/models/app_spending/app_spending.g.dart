// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_spending.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppSpending _$$_AppSpendingFromJson(Map<String, dynamic> json) =>
    _$_AppSpending(
      id: json['id'] as String,
      categoryId: json['categoryId'] as String,
      sum: (json['sum'] as num).toDouble(),
      date: json['date'] as int,
      isRequestToRemove: json['isRequestToRemove'] as bool?,
    );

Map<String, dynamic> _$$_AppSpendingToJson(_$_AppSpending instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'sum': instance.sum,
      'date': instance.date,
      'isRequestToRemove': instance.isRequestToRemove,
    };
