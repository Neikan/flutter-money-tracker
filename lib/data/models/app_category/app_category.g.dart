// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppCategory _$$_AppCategoryFromJson(Map<String, dynamic> json) =>
    _$_AppCategory(
      id: json['id'] as String,
      name: json['name'] as String,
      color: json['color'] as String,
      isRequestToRemove: json['isRequestToRemove'] as bool? ?? false,
    );

Map<String, dynamic> _$$_AppCategoryToJson(_$_AppCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
      'isRequestToRemove': instance.isRequestToRemove,
    };
