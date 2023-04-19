// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc_spendings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BlocSpendingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<AppSpending> spendings) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<AppSpending> spendings)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<AppSpending> spendings)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocSpendingsStateLoading value) loading,
    required TResult Function(BlocSpendingsStateLoaded value) loaded,
    required TResult Function(BlocSpendingsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocSpendingsStateLoading value)? loading,
    TResult? Function(BlocSpendingsStateLoaded value)? loaded,
    TResult? Function(BlocSpendingsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocSpendingsStateLoading value)? loading,
    TResult Function(BlocSpendingsStateLoaded value)? loaded,
    TResult Function(BlocSpendingsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlocSpendingsStateCopyWith<$Res> {
  factory $BlocSpendingsStateCopyWith(
          BlocSpendingsState value, $Res Function(BlocSpendingsState) then) =
      _$BlocSpendingsStateCopyWithImpl<$Res, BlocSpendingsState>;
}

/// @nodoc
class _$BlocSpendingsStateCopyWithImpl<$Res, $Val extends BlocSpendingsState>
    implements $BlocSpendingsStateCopyWith<$Res> {
  _$BlocSpendingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BlocSpendingsStateLoadingCopyWith<$Res> {
  factory _$$BlocSpendingsStateLoadingCopyWith(
          _$BlocSpendingsStateLoading value,
          $Res Function(_$BlocSpendingsStateLoading) then) =
      __$$BlocSpendingsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlocSpendingsStateLoadingCopyWithImpl<$Res>
    extends _$BlocSpendingsStateCopyWithImpl<$Res, _$BlocSpendingsStateLoading>
    implements _$$BlocSpendingsStateLoadingCopyWith<$Res> {
  __$$BlocSpendingsStateLoadingCopyWithImpl(_$BlocSpendingsStateLoading _value,
      $Res Function(_$BlocSpendingsStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BlocSpendingsStateLoading implements BlocSpendingsStateLoading {
  const _$BlocSpendingsStateLoading();

  @override
  String toString() {
    return 'BlocSpendingsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocSpendingsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<AppSpending> spendings) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<AppSpending> spendings)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<AppSpending> spendings)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocSpendingsStateLoading value) loading,
    required TResult Function(BlocSpendingsStateLoaded value) loaded,
    required TResult Function(BlocSpendingsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocSpendingsStateLoading value)? loading,
    TResult? Function(BlocSpendingsStateLoaded value)? loaded,
    TResult? Function(BlocSpendingsStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocSpendingsStateLoading value)? loading,
    TResult Function(BlocSpendingsStateLoaded value)? loaded,
    TResult Function(BlocSpendingsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BlocSpendingsStateLoading implements BlocSpendingsState {
  const factory BlocSpendingsStateLoading() = _$BlocSpendingsStateLoading;
}

/// @nodoc
abstract class _$$BlocSpendingsStateLoadedCopyWith<$Res> {
  factory _$$BlocSpendingsStateLoadedCopyWith(_$BlocSpendingsStateLoaded value,
          $Res Function(_$BlocSpendingsStateLoaded) then) =
      __$$BlocSpendingsStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AppSpending> spendings});
}

/// @nodoc
class __$$BlocSpendingsStateLoadedCopyWithImpl<$Res>
    extends _$BlocSpendingsStateCopyWithImpl<$Res, _$BlocSpendingsStateLoaded>
    implements _$$BlocSpendingsStateLoadedCopyWith<$Res> {
  __$$BlocSpendingsStateLoadedCopyWithImpl(_$BlocSpendingsStateLoaded _value,
      $Res Function(_$BlocSpendingsStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spendings = null,
  }) {
    return _then(_$BlocSpendingsStateLoaded(
      null == spendings
          ? _value._spendings
          : spendings // ignore: cast_nullable_to_non_nullable
              as List<AppSpending>,
    ));
  }
}

/// @nodoc

class _$BlocSpendingsStateLoaded implements BlocSpendingsStateLoaded {
  const _$BlocSpendingsStateLoaded(final List<AppSpending> spendings)
      : _spendings = spendings;

  final List<AppSpending> _spendings;
  @override
  List<AppSpending> get spendings {
    if (_spendings is EqualUnmodifiableListView) return _spendings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spendings);
  }

  @override
  String toString() {
    return 'BlocSpendingsState.loaded(spendings: $spendings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocSpendingsStateLoaded &&
            const DeepCollectionEquality()
                .equals(other._spendings, _spendings));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_spendings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocSpendingsStateLoadedCopyWith<_$BlocSpendingsStateLoaded>
      get copyWith =>
          __$$BlocSpendingsStateLoadedCopyWithImpl<_$BlocSpendingsStateLoaded>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<AppSpending> spendings) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(spendings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<AppSpending> spendings)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(spendings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<AppSpending> spendings)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(spendings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocSpendingsStateLoading value) loading,
    required TResult Function(BlocSpendingsStateLoaded value) loaded,
    required TResult Function(BlocSpendingsStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocSpendingsStateLoading value)? loading,
    TResult? Function(BlocSpendingsStateLoaded value)? loaded,
    TResult? Function(BlocSpendingsStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocSpendingsStateLoading value)? loading,
    TResult Function(BlocSpendingsStateLoaded value)? loaded,
    TResult Function(BlocSpendingsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class BlocSpendingsStateLoaded implements BlocSpendingsState {
  const factory BlocSpendingsStateLoaded(final List<AppSpending> spendings) =
      _$BlocSpendingsStateLoaded;

  List<AppSpending> get spendings;
  @JsonKey(ignore: true)
  _$$BlocSpendingsStateLoadedCopyWith<_$BlocSpendingsStateLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlocSpendingsStateErrorCopyWith<$Res> {
  factory _$$BlocSpendingsStateErrorCopyWith(_$BlocSpendingsStateError value,
          $Res Function(_$BlocSpendingsStateError) then) =
      __$$BlocSpendingsStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$BlocSpendingsStateErrorCopyWithImpl<$Res>
    extends _$BlocSpendingsStateCopyWithImpl<$Res, _$BlocSpendingsStateError>
    implements _$$BlocSpendingsStateErrorCopyWith<$Res> {
  __$$BlocSpendingsStateErrorCopyWithImpl(_$BlocSpendingsStateError _value,
      $Res Function(_$BlocSpendingsStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$BlocSpendingsStateError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BlocSpendingsStateError implements BlocSpendingsStateError {
  const _$BlocSpendingsStateError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'BlocSpendingsState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocSpendingsStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocSpendingsStateErrorCopyWith<_$BlocSpendingsStateError> get copyWith =>
      __$$BlocSpendingsStateErrorCopyWithImpl<_$BlocSpendingsStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<AppSpending> spendings) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<AppSpending> spendings)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<AppSpending> spendings)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocSpendingsStateLoading value) loading,
    required TResult Function(BlocSpendingsStateLoaded value) loaded,
    required TResult Function(BlocSpendingsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocSpendingsStateLoading value)? loading,
    TResult? Function(BlocSpendingsStateLoaded value)? loaded,
    TResult? Function(BlocSpendingsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocSpendingsStateLoading value)? loading,
    TResult Function(BlocSpendingsStateLoaded value)? loaded,
    TResult Function(BlocSpendingsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class BlocSpendingsStateError implements BlocSpendingsState {
  const factory BlocSpendingsStateError(final String error) =
      _$BlocSpendingsStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$BlocSpendingsStateErrorCopyWith<_$BlocSpendingsStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
