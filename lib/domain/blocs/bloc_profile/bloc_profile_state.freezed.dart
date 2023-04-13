// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BlocProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppProfile profile) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppProfile profile)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppProfile profile)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocProfileStateLoading value) loading,
    required TResult Function(BlocProfileStateLoaded value) loaded,
    required TResult Function(BlocProfileStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocProfileStateLoading value)? loading,
    TResult? Function(BlocProfileStateLoaded value)? loaded,
    TResult? Function(BlocProfileStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocProfileStateLoading value)? loading,
    TResult Function(BlocProfileStateLoaded value)? loaded,
    TResult Function(BlocProfileStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlocProfileStateCopyWith<$Res> {
  factory $BlocProfileStateCopyWith(
          BlocProfileState value, $Res Function(BlocProfileState) then) =
      _$BlocProfileStateCopyWithImpl<$Res, BlocProfileState>;
}

/// @nodoc
class _$BlocProfileStateCopyWithImpl<$Res, $Val extends BlocProfileState>
    implements $BlocProfileStateCopyWith<$Res> {
  _$BlocProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BlocProfileStateLoadingCopyWith<$Res> {
  factory _$$BlocProfileStateLoadingCopyWith(_$BlocProfileStateLoading value,
          $Res Function(_$BlocProfileStateLoading) then) =
      __$$BlocProfileStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlocProfileStateLoadingCopyWithImpl<$Res>
    extends _$BlocProfileStateCopyWithImpl<$Res, _$BlocProfileStateLoading>
    implements _$$BlocProfileStateLoadingCopyWith<$Res> {
  __$$BlocProfileStateLoadingCopyWithImpl(_$BlocProfileStateLoading _value,
      $Res Function(_$BlocProfileStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BlocProfileStateLoading implements BlocProfileStateLoading {
  const _$BlocProfileStateLoading();

  @override
  String toString() {
    return 'BlocProfileState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocProfileStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppProfile profile) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppProfile profile)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppProfile profile)? loaded,
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
    required TResult Function(BlocProfileStateLoading value) loading,
    required TResult Function(BlocProfileStateLoaded value) loaded,
    required TResult Function(BlocProfileStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocProfileStateLoading value)? loading,
    TResult? Function(BlocProfileStateLoaded value)? loaded,
    TResult? Function(BlocProfileStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocProfileStateLoading value)? loading,
    TResult Function(BlocProfileStateLoaded value)? loaded,
    TResult Function(BlocProfileStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BlocProfileStateLoading implements BlocProfileState {
  const factory BlocProfileStateLoading() = _$BlocProfileStateLoading;
}

/// @nodoc
abstract class _$$BlocProfileStateLoadedCopyWith<$Res> {
  factory _$$BlocProfileStateLoadedCopyWith(_$BlocProfileStateLoaded value,
          $Res Function(_$BlocProfileStateLoaded) then) =
      __$$BlocProfileStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({AppProfile profile});
}

/// @nodoc
class __$$BlocProfileStateLoadedCopyWithImpl<$Res>
    extends _$BlocProfileStateCopyWithImpl<$Res, _$BlocProfileStateLoaded>
    implements _$$BlocProfileStateLoadedCopyWith<$Res> {
  __$$BlocProfileStateLoadedCopyWithImpl(_$BlocProfileStateLoaded _value,
      $Res Function(_$BlocProfileStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$BlocProfileStateLoaded(
      null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as AppProfile,
    ));
  }
}

/// @nodoc

class _$BlocProfileStateLoaded implements BlocProfileStateLoaded {
  const _$BlocProfileStateLoaded(this.profile);

  @override
  final AppProfile profile;

  @override
  String toString() {
    return 'BlocProfileState.loaded(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocProfileStateLoaded &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocProfileStateLoadedCopyWith<_$BlocProfileStateLoaded> get copyWith =>
      __$$BlocProfileStateLoadedCopyWithImpl<_$BlocProfileStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppProfile profile) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppProfile profile)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppProfile profile)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocProfileStateLoading value) loading,
    required TResult Function(BlocProfileStateLoaded value) loaded,
    required TResult Function(BlocProfileStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocProfileStateLoading value)? loading,
    TResult? Function(BlocProfileStateLoaded value)? loaded,
    TResult? Function(BlocProfileStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocProfileStateLoading value)? loading,
    TResult Function(BlocProfileStateLoaded value)? loaded,
    TResult Function(BlocProfileStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class BlocProfileStateLoaded implements BlocProfileState {
  const factory BlocProfileStateLoaded(final AppProfile profile) =
      _$BlocProfileStateLoaded;

  AppProfile get profile;
  @JsonKey(ignore: true)
  _$$BlocProfileStateLoadedCopyWith<_$BlocProfileStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlocProfileStateErrorCopyWith<$Res> {
  factory _$$BlocProfileStateErrorCopyWith(_$BlocProfileStateError value,
          $Res Function(_$BlocProfileStateError) then) =
      __$$BlocProfileStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$BlocProfileStateErrorCopyWithImpl<$Res>
    extends _$BlocProfileStateCopyWithImpl<$Res, _$BlocProfileStateError>
    implements _$$BlocProfileStateErrorCopyWith<$Res> {
  __$$BlocProfileStateErrorCopyWithImpl(_$BlocProfileStateError _value,
      $Res Function(_$BlocProfileStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$BlocProfileStateError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BlocProfileStateError implements BlocProfileStateError {
  const _$BlocProfileStateError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'BlocProfileState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocProfileStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocProfileStateErrorCopyWith<_$BlocProfileStateError> get copyWith =>
      __$$BlocProfileStateErrorCopyWithImpl<_$BlocProfileStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppProfile profile) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppProfile profile)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppProfile profile)? loaded,
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
    required TResult Function(BlocProfileStateLoading value) loading,
    required TResult Function(BlocProfileStateLoaded value) loaded,
    required TResult Function(BlocProfileStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocProfileStateLoading value)? loading,
    TResult? Function(BlocProfileStateLoaded value)? loaded,
    TResult? Function(BlocProfileStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocProfileStateLoading value)? loading,
    TResult Function(BlocProfileStateLoaded value)? loaded,
    TResult Function(BlocProfileStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class BlocProfileStateError implements BlocProfileState {
  const factory BlocProfileStateError(final String error) =
      _$BlocProfileStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$BlocProfileStateErrorCopyWith<_$BlocProfileStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
