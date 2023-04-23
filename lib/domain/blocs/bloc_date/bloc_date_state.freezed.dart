// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc_date_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BlocDateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppDate date) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppDate date)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppDate date)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocDateStateLoading value) loading,
    required TResult Function(BlocDateStateLoaded value) loaded,
    required TResult Function(BlocDateStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocDateStateLoading value)? loading,
    TResult? Function(BlocDateStateLoaded value)? loaded,
    TResult? Function(BlocDateStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocDateStateLoading value)? loading,
    TResult Function(BlocDateStateLoaded value)? loaded,
    TResult Function(BlocDateStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlocDateStateCopyWith<$Res> {
  factory $BlocDateStateCopyWith(
          BlocDateState value, $Res Function(BlocDateState) then) =
      _$BlocDateStateCopyWithImpl<$Res, BlocDateState>;
}

/// @nodoc
class _$BlocDateStateCopyWithImpl<$Res, $Val extends BlocDateState>
    implements $BlocDateStateCopyWith<$Res> {
  _$BlocDateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BlocDateStateLoadingCopyWith<$Res> {
  factory _$$BlocDateStateLoadingCopyWith(_$BlocDateStateLoading value,
          $Res Function(_$BlocDateStateLoading) then) =
      __$$BlocDateStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlocDateStateLoadingCopyWithImpl<$Res>
    extends _$BlocDateStateCopyWithImpl<$Res, _$BlocDateStateLoading>
    implements _$$BlocDateStateLoadingCopyWith<$Res> {
  __$$BlocDateStateLoadingCopyWithImpl(_$BlocDateStateLoading _value,
      $Res Function(_$BlocDateStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BlocDateStateLoading implements BlocDateStateLoading {
  const _$BlocDateStateLoading();

  @override
  String toString() {
    return 'BlocDateState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BlocDateStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppDate date) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppDate date)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppDate date)? loaded,
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
    required TResult Function(BlocDateStateLoading value) loading,
    required TResult Function(BlocDateStateLoaded value) loaded,
    required TResult Function(BlocDateStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocDateStateLoading value)? loading,
    TResult? Function(BlocDateStateLoaded value)? loaded,
    TResult? Function(BlocDateStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocDateStateLoading value)? loading,
    TResult Function(BlocDateStateLoaded value)? loaded,
    TResult Function(BlocDateStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BlocDateStateLoading implements BlocDateState {
  const factory BlocDateStateLoading() = _$BlocDateStateLoading;
}

/// @nodoc
abstract class _$$BlocDateStateLoadedCopyWith<$Res> {
  factory _$$BlocDateStateLoadedCopyWith(_$BlocDateStateLoaded value,
          $Res Function(_$BlocDateStateLoaded) then) =
      __$$BlocDateStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({AppDate date});
}

/// @nodoc
class __$$BlocDateStateLoadedCopyWithImpl<$Res>
    extends _$BlocDateStateCopyWithImpl<$Res, _$BlocDateStateLoaded>
    implements _$$BlocDateStateLoadedCopyWith<$Res> {
  __$$BlocDateStateLoadedCopyWithImpl(
      _$BlocDateStateLoaded _value, $Res Function(_$BlocDateStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$BlocDateStateLoaded(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as AppDate,
    ));
  }
}

/// @nodoc

class _$BlocDateStateLoaded implements BlocDateStateLoaded {
  const _$BlocDateStateLoaded(this.date);

  @override
  final AppDate date;

  @override
  String toString() {
    return 'BlocDateState.loaded(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocDateStateLoaded &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocDateStateLoadedCopyWith<_$BlocDateStateLoaded> get copyWith =>
      __$$BlocDateStateLoadedCopyWithImpl<_$BlocDateStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppDate date) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppDate date)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppDate date)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocDateStateLoading value) loading,
    required TResult Function(BlocDateStateLoaded value) loaded,
    required TResult Function(BlocDateStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocDateStateLoading value)? loading,
    TResult? Function(BlocDateStateLoaded value)? loaded,
    TResult? Function(BlocDateStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocDateStateLoading value)? loading,
    TResult Function(BlocDateStateLoaded value)? loaded,
    TResult Function(BlocDateStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class BlocDateStateLoaded implements BlocDateState {
  const factory BlocDateStateLoaded(final AppDate date) = _$BlocDateStateLoaded;

  AppDate get date;
  @JsonKey(ignore: true)
  _$$BlocDateStateLoadedCopyWith<_$BlocDateStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlocDateStateErrorCopyWith<$Res> {
  factory _$$BlocDateStateErrorCopyWith(_$BlocDateStateError value,
          $Res Function(_$BlocDateStateError) then) =
      __$$BlocDateStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$BlocDateStateErrorCopyWithImpl<$Res>
    extends _$BlocDateStateCopyWithImpl<$Res, _$BlocDateStateError>
    implements _$$BlocDateStateErrorCopyWith<$Res> {
  __$$BlocDateStateErrorCopyWithImpl(
      _$BlocDateStateError _value, $Res Function(_$BlocDateStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$BlocDateStateError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BlocDateStateError implements BlocDateStateError {
  const _$BlocDateStateError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'BlocDateState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocDateStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocDateStateErrorCopyWith<_$BlocDateStateError> get copyWith =>
      __$$BlocDateStateErrorCopyWithImpl<_$BlocDateStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppDate date) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppDate date)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppDate date)? loaded,
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
    required TResult Function(BlocDateStateLoading value) loading,
    required TResult Function(BlocDateStateLoaded value) loaded,
    required TResult Function(BlocDateStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocDateStateLoading value)? loading,
    TResult? Function(BlocDateStateLoaded value)? loaded,
    TResult? Function(BlocDateStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocDateStateLoading value)? loading,
    TResult Function(BlocDateStateLoaded value)? loaded,
    TResult Function(BlocDateStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class BlocDateStateError implements BlocDateState {
  const factory BlocDateStateError(final String error) = _$BlocDateStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$BlocDateStateErrorCopyWith<_$BlocDateStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
