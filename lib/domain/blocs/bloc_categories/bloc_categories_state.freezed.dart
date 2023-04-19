// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc_categories_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BlocCategoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<AppCategory> categories) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<AppCategory> categories)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<AppCategory> categories)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocCategoriesStateLoading value) loading,
    required TResult Function(BlocCategoriesStateLoaded value) loaded,
    required TResult Function(BlocCategoriesStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocCategoriesStateLoading value)? loading,
    TResult? Function(BlocCategoriesStateLoaded value)? loaded,
    TResult? Function(BlocCategoriesStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocCategoriesStateLoading value)? loading,
    TResult Function(BlocCategoriesStateLoaded value)? loaded,
    TResult Function(BlocCategoriesStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlocCategoriesStateCopyWith<$Res> {
  factory $BlocCategoriesStateCopyWith(
          BlocCategoriesState value, $Res Function(BlocCategoriesState) then) =
      _$BlocCategoriesStateCopyWithImpl<$Res, BlocCategoriesState>;
}

/// @nodoc
class _$BlocCategoriesStateCopyWithImpl<$Res, $Val extends BlocCategoriesState>
    implements $BlocCategoriesStateCopyWith<$Res> {
  _$BlocCategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BlocCategoriesStateLoadingCopyWith<$Res> {
  factory _$$BlocCategoriesStateLoadingCopyWith(
          _$BlocCategoriesStateLoading value,
          $Res Function(_$BlocCategoriesStateLoading) then) =
      __$$BlocCategoriesStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlocCategoriesStateLoadingCopyWithImpl<$Res>
    extends _$BlocCategoriesStateCopyWithImpl<$Res,
        _$BlocCategoriesStateLoading>
    implements _$$BlocCategoriesStateLoadingCopyWith<$Res> {
  __$$BlocCategoriesStateLoadingCopyWithImpl(
      _$BlocCategoriesStateLoading _value,
      $Res Function(_$BlocCategoriesStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BlocCategoriesStateLoading implements BlocCategoriesStateLoading {
  const _$BlocCategoriesStateLoading();

  @override
  String toString() {
    return 'BlocCategoriesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocCategoriesStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<AppCategory> categories) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<AppCategory> categories)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<AppCategory> categories)? loaded,
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
    required TResult Function(BlocCategoriesStateLoading value) loading,
    required TResult Function(BlocCategoriesStateLoaded value) loaded,
    required TResult Function(BlocCategoriesStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocCategoriesStateLoading value)? loading,
    TResult? Function(BlocCategoriesStateLoaded value)? loaded,
    TResult? Function(BlocCategoriesStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocCategoriesStateLoading value)? loading,
    TResult Function(BlocCategoriesStateLoaded value)? loaded,
    TResult Function(BlocCategoriesStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BlocCategoriesStateLoading implements BlocCategoriesState {
  const factory BlocCategoriesStateLoading() = _$BlocCategoriesStateLoading;
}

/// @nodoc
abstract class _$$BlocCategoriesStateLoadedCopyWith<$Res> {
  factory _$$BlocCategoriesStateLoadedCopyWith(
          _$BlocCategoriesStateLoaded value,
          $Res Function(_$BlocCategoriesStateLoaded) then) =
      __$$BlocCategoriesStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AppCategory> categories});
}

/// @nodoc
class __$$BlocCategoriesStateLoadedCopyWithImpl<$Res>
    extends _$BlocCategoriesStateCopyWithImpl<$Res, _$BlocCategoriesStateLoaded>
    implements _$$BlocCategoriesStateLoadedCopyWith<$Res> {
  __$$BlocCategoriesStateLoadedCopyWithImpl(_$BlocCategoriesStateLoaded _value,
      $Res Function(_$BlocCategoriesStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$BlocCategoriesStateLoaded(
      null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<AppCategory>,
    ));
  }
}

/// @nodoc

class _$BlocCategoriesStateLoaded implements BlocCategoriesStateLoaded {
  const _$BlocCategoriesStateLoaded(final List<AppCategory> categories)
      : _categories = categories;

  final List<AppCategory> _categories;
  @override
  List<AppCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'BlocCategoriesState.loaded(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocCategoriesStateLoaded &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocCategoriesStateLoadedCopyWith<_$BlocCategoriesStateLoaded>
      get copyWith => __$$BlocCategoriesStateLoadedCopyWithImpl<
          _$BlocCategoriesStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<AppCategory> categories) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<AppCategory> categories)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<AppCategory> categories)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocCategoriesStateLoading value) loading,
    required TResult Function(BlocCategoriesStateLoaded value) loaded,
    required TResult Function(BlocCategoriesStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocCategoriesStateLoading value)? loading,
    TResult? Function(BlocCategoriesStateLoaded value)? loaded,
    TResult? Function(BlocCategoriesStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocCategoriesStateLoading value)? loading,
    TResult Function(BlocCategoriesStateLoaded value)? loaded,
    TResult Function(BlocCategoriesStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class BlocCategoriesStateLoaded implements BlocCategoriesState {
  const factory BlocCategoriesStateLoaded(final List<AppCategory> categories) =
      _$BlocCategoriesStateLoaded;

  List<AppCategory> get categories;
  @JsonKey(ignore: true)
  _$$BlocCategoriesStateLoadedCopyWith<_$BlocCategoriesStateLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlocCategoriesStateErrorCopyWith<$Res> {
  factory _$$BlocCategoriesStateErrorCopyWith(_$BlocCategoriesStateError value,
          $Res Function(_$BlocCategoriesStateError) then) =
      __$$BlocCategoriesStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$BlocCategoriesStateErrorCopyWithImpl<$Res>
    extends _$BlocCategoriesStateCopyWithImpl<$Res, _$BlocCategoriesStateError>
    implements _$$BlocCategoriesStateErrorCopyWith<$Res> {
  __$$BlocCategoriesStateErrorCopyWithImpl(_$BlocCategoriesStateError _value,
      $Res Function(_$BlocCategoriesStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$BlocCategoriesStateError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BlocCategoriesStateError implements BlocCategoriesStateError {
  const _$BlocCategoriesStateError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'BlocCategoriesState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocCategoriesStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocCategoriesStateErrorCopyWith<_$BlocCategoriesStateError>
      get copyWith =>
          __$$BlocCategoriesStateErrorCopyWithImpl<_$BlocCategoriesStateError>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<AppCategory> categories) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<AppCategory> categories)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<AppCategory> categories)? loaded,
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
    required TResult Function(BlocCategoriesStateLoading value) loading,
    required TResult Function(BlocCategoriesStateLoaded value) loaded,
    required TResult Function(BlocCategoriesStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocCategoriesStateLoading value)? loading,
    TResult? Function(BlocCategoriesStateLoaded value)? loaded,
    TResult? Function(BlocCategoriesStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocCategoriesStateLoading value)? loading,
    TResult Function(BlocCategoriesStateLoaded value)? loaded,
    TResult Function(BlocCategoriesStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class BlocCategoriesStateError implements BlocCategoriesState {
  const factory BlocCategoriesStateError(final String error) =
      _$BlocCategoriesStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$BlocCategoriesStateErrorCopyWith<_$BlocCategoriesStateError>
      get copyWith => throw _privateConstructorUsedError;
}
