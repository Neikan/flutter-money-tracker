// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_spending.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppSpending _$AppSpendingFromJson(Map<String, dynamic> json) {
  return _AppSpending.fromJson(json);
}

/// @nodoc
mixin _$AppSpending {
  String get id => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  double get sum => throw _privateConstructorUsedError;
  int get date => throw _privateConstructorUsedError;
  bool? get isRequestToRemove => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppSpendingCopyWith<AppSpending> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSpendingCopyWith<$Res> {
  factory $AppSpendingCopyWith(
          AppSpending value, $Res Function(AppSpending) then) =
      _$AppSpendingCopyWithImpl<$Res, AppSpending>;
  @useResult
  $Res call(
      {String id,
      String categoryId,
      double sum,
      int date,
      bool? isRequestToRemove});
}

/// @nodoc
class _$AppSpendingCopyWithImpl<$Res, $Val extends AppSpending>
    implements $AppSpendingCopyWith<$Res> {
  _$AppSpendingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryId = null,
    Object? sum = null,
    Object? date = null,
    Object? isRequestToRemove = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      isRequestToRemove: freezed == isRequestToRemove
          ? _value.isRequestToRemove
          : isRequestToRemove // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppSpendingCopyWith<$Res>
    implements $AppSpendingCopyWith<$Res> {
  factory _$$_AppSpendingCopyWith(
          _$_AppSpending value, $Res Function(_$_AppSpending) then) =
      __$$_AppSpendingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String categoryId,
      double sum,
      int date,
      bool? isRequestToRemove});
}

/// @nodoc
class __$$_AppSpendingCopyWithImpl<$Res>
    extends _$AppSpendingCopyWithImpl<$Res, _$_AppSpending>
    implements _$$_AppSpendingCopyWith<$Res> {
  __$$_AppSpendingCopyWithImpl(
      _$_AppSpending _value, $Res Function(_$_AppSpending) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryId = null,
    Object? sum = null,
    Object? date = null,
    Object? isRequestToRemove = freezed,
  }) {
    return _then(_$_AppSpending(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      isRequestToRemove: freezed == isRequestToRemove
          ? _value.isRequestToRemove
          : isRequestToRemove // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppSpending implements _AppSpending {
  const _$_AppSpending(
      {required this.id,
      required this.categoryId,
      required this.sum,
      required this.date,
      this.isRequestToRemove});

  factory _$_AppSpending.fromJson(Map<String, dynamic> json) =>
      _$$_AppSpendingFromJson(json);

  @override
  final String id;
  @override
  final String categoryId;
  @override
  final double sum;
  @override
  final int date;
  @override
  final bool? isRequestToRemove;

  @override
  String toString() {
    return 'AppSpending(id: $id, categoryId: $categoryId, sum: $sum, date: $date, isRequestToRemove: $isRequestToRemove)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppSpending &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.sum, sum) || other.sum == sum) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.isRequestToRemove, isRequestToRemove) ||
                other.isRequestToRemove == isRequestToRemove));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, categoryId, sum, date, isRequestToRemove);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppSpendingCopyWith<_$_AppSpending> get copyWith =>
      __$$_AppSpendingCopyWithImpl<_$_AppSpending>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppSpendingToJson(
      this,
    );
  }
}

abstract class _AppSpending implements AppSpending {
  const factory _AppSpending(
      {required final String id,
      required final String categoryId,
      required final double sum,
      required final int date,
      final bool? isRequestToRemove}) = _$_AppSpending;

  factory _AppSpending.fromJson(Map<String, dynamic> json) =
      _$_AppSpending.fromJson;

  @override
  String get id;
  @override
  String get categoryId;
  @override
  double get sum;
  @override
  int get date;
  @override
  bool? get isRequestToRemove;
  @override
  @JsonKey(ignore: true)
  _$$_AppSpendingCopyWith<_$_AppSpending> get copyWith =>
      throw _privateConstructorUsedError;
}
