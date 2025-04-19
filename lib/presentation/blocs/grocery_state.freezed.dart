// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grocery_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GroceryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Grocery> groceries) loadedNotEmpty,
    required TResult Function() loadedEmpty,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Grocery> groceries)? loadedNotEmpty,
    TResult? Function()? loadedEmpty,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Grocery> groceries)? loadedNotEmpty,
    TResult Function()? loadedEmpty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GroceryLoading value) loading,
    required TResult Function(GroceryLoadedNotEmpty value) loadedNotEmpty,
    required TResult Function(GroceryLoadedEmpty value) loadedEmpty,
    required TResult Function(GroceryError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroceryLoading value)? loading,
    TResult? Function(GroceryLoadedNotEmpty value)? loadedNotEmpty,
    TResult? Function(GroceryLoadedEmpty value)? loadedEmpty,
    TResult? Function(GroceryError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroceryLoading value)? loading,
    TResult Function(GroceryLoadedNotEmpty value)? loadedNotEmpty,
    TResult Function(GroceryLoadedEmpty value)? loadedEmpty,
    TResult Function(GroceryError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroceryStateCopyWith<$Res> {
  factory $GroceryStateCopyWith(
          GroceryState value, $Res Function(GroceryState) then) =
      _$GroceryStateCopyWithImpl<$Res, GroceryState>;
}

/// @nodoc
class _$GroceryStateCopyWithImpl<$Res, $Val extends GroceryState>
    implements $GroceryStateCopyWith<$Res> {
  _$GroceryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GroceryLoadingImplCopyWith<$Res> {
  factory _$$GroceryLoadingImplCopyWith(_$GroceryLoadingImpl value,
          $Res Function(_$GroceryLoadingImpl) then) =
      __$$GroceryLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GroceryLoadingImplCopyWithImpl<$Res>
    extends _$GroceryStateCopyWithImpl<$Res, _$GroceryLoadingImpl>
    implements _$$GroceryLoadingImplCopyWith<$Res> {
  __$$GroceryLoadingImplCopyWithImpl(
      _$GroceryLoadingImpl _value, $Res Function(_$GroceryLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GroceryLoadingImpl implements GroceryLoading {
  const _$GroceryLoadingImpl();

  @override
  String toString() {
    return 'GroceryState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GroceryLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Grocery> groceries) loadedNotEmpty,
    required TResult Function() loadedEmpty,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Grocery> groceries)? loadedNotEmpty,
    TResult? Function()? loadedEmpty,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Grocery> groceries)? loadedNotEmpty,
    TResult Function()? loadedEmpty,
    TResult Function(String message)? error,
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
    required TResult Function(GroceryLoading value) loading,
    required TResult Function(GroceryLoadedNotEmpty value) loadedNotEmpty,
    required TResult Function(GroceryLoadedEmpty value) loadedEmpty,
    required TResult Function(GroceryError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroceryLoading value)? loading,
    TResult? Function(GroceryLoadedNotEmpty value)? loadedNotEmpty,
    TResult? Function(GroceryLoadedEmpty value)? loadedEmpty,
    TResult? Function(GroceryError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroceryLoading value)? loading,
    TResult Function(GroceryLoadedNotEmpty value)? loadedNotEmpty,
    TResult Function(GroceryLoadedEmpty value)? loadedEmpty,
    TResult Function(GroceryError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GroceryLoading implements GroceryState {
  const factory GroceryLoading() = _$GroceryLoadingImpl;
}

/// @nodoc
abstract class _$$GroceryLoadedNotEmptyImplCopyWith<$Res> {
  factory _$$GroceryLoadedNotEmptyImplCopyWith(
          _$GroceryLoadedNotEmptyImpl value,
          $Res Function(_$GroceryLoadedNotEmptyImpl) then) =
      __$$GroceryLoadedNotEmptyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Grocery> groceries});
}

/// @nodoc
class __$$GroceryLoadedNotEmptyImplCopyWithImpl<$Res>
    extends _$GroceryStateCopyWithImpl<$Res, _$GroceryLoadedNotEmptyImpl>
    implements _$$GroceryLoadedNotEmptyImplCopyWith<$Res> {
  __$$GroceryLoadedNotEmptyImplCopyWithImpl(_$GroceryLoadedNotEmptyImpl _value,
      $Res Function(_$GroceryLoadedNotEmptyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groceries = null,
  }) {
    return _then(_$GroceryLoadedNotEmptyImpl(
      null == groceries
          ? _value._groceries
          : groceries // ignore: cast_nullable_to_non_nullable
              as List<Grocery>,
    ));
  }
}

/// @nodoc

class _$GroceryLoadedNotEmptyImpl implements GroceryLoadedNotEmpty {
  const _$GroceryLoadedNotEmptyImpl(final List<Grocery> groceries)
      : _groceries = groceries;

  final List<Grocery> _groceries;
  @override
  List<Grocery> get groceries {
    if (_groceries is EqualUnmodifiableListView) return _groceries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groceries);
  }

  @override
  String toString() {
    return 'GroceryState.loadedNotEmpty(groceries: $groceries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroceryLoadedNotEmptyImpl &&
            const DeepCollectionEquality()
                .equals(other._groceries, _groceries));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_groceries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroceryLoadedNotEmptyImplCopyWith<_$GroceryLoadedNotEmptyImpl>
      get copyWith => __$$GroceryLoadedNotEmptyImplCopyWithImpl<
          _$GroceryLoadedNotEmptyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Grocery> groceries) loadedNotEmpty,
    required TResult Function() loadedEmpty,
    required TResult Function(String message) error,
  }) {
    return loadedNotEmpty(groceries);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Grocery> groceries)? loadedNotEmpty,
    TResult? Function()? loadedEmpty,
    TResult? Function(String message)? error,
  }) {
    return loadedNotEmpty?.call(groceries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Grocery> groceries)? loadedNotEmpty,
    TResult Function()? loadedEmpty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadedNotEmpty != null) {
      return loadedNotEmpty(groceries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GroceryLoading value) loading,
    required TResult Function(GroceryLoadedNotEmpty value) loadedNotEmpty,
    required TResult Function(GroceryLoadedEmpty value) loadedEmpty,
    required TResult Function(GroceryError value) error,
  }) {
    return loadedNotEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroceryLoading value)? loading,
    TResult? Function(GroceryLoadedNotEmpty value)? loadedNotEmpty,
    TResult? Function(GroceryLoadedEmpty value)? loadedEmpty,
    TResult? Function(GroceryError value)? error,
  }) {
    return loadedNotEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroceryLoading value)? loading,
    TResult Function(GroceryLoadedNotEmpty value)? loadedNotEmpty,
    TResult Function(GroceryLoadedEmpty value)? loadedEmpty,
    TResult Function(GroceryError value)? error,
    required TResult orElse(),
  }) {
    if (loadedNotEmpty != null) {
      return loadedNotEmpty(this);
    }
    return orElse();
  }
}

abstract class GroceryLoadedNotEmpty implements GroceryState {
  const factory GroceryLoadedNotEmpty(final List<Grocery> groceries) =
      _$GroceryLoadedNotEmptyImpl;

  List<Grocery> get groceries;
  @JsonKey(ignore: true)
  _$$GroceryLoadedNotEmptyImplCopyWith<_$GroceryLoadedNotEmptyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GroceryLoadedEmptyImplCopyWith<$Res> {
  factory _$$GroceryLoadedEmptyImplCopyWith(_$GroceryLoadedEmptyImpl value,
          $Res Function(_$GroceryLoadedEmptyImpl) then) =
      __$$GroceryLoadedEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GroceryLoadedEmptyImplCopyWithImpl<$Res>
    extends _$GroceryStateCopyWithImpl<$Res, _$GroceryLoadedEmptyImpl>
    implements _$$GroceryLoadedEmptyImplCopyWith<$Res> {
  __$$GroceryLoadedEmptyImplCopyWithImpl(_$GroceryLoadedEmptyImpl _value,
      $Res Function(_$GroceryLoadedEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GroceryLoadedEmptyImpl implements GroceryLoadedEmpty {
  const _$GroceryLoadedEmptyImpl();

  @override
  String toString() {
    return 'GroceryState.loadedEmpty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GroceryLoadedEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Grocery> groceries) loadedNotEmpty,
    required TResult Function() loadedEmpty,
    required TResult Function(String message) error,
  }) {
    return loadedEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Grocery> groceries)? loadedNotEmpty,
    TResult? Function()? loadedEmpty,
    TResult? Function(String message)? error,
  }) {
    return loadedEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Grocery> groceries)? loadedNotEmpty,
    TResult Function()? loadedEmpty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadedEmpty != null) {
      return loadedEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GroceryLoading value) loading,
    required TResult Function(GroceryLoadedNotEmpty value) loadedNotEmpty,
    required TResult Function(GroceryLoadedEmpty value) loadedEmpty,
    required TResult Function(GroceryError value) error,
  }) {
    return loadedEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroceryLoading value)? loading,
    TResult? Function(GroceryLoadedNotEmpty value)? loadedNotEmpty,
    TResult? Function(GroceryLoadedEmpty value)? loadedEmpty,
    TResult? Function(GroceryError value)? error,
  }) {
    return loadedEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroceryLoading value)? loading,
    TResult Function(GroceryLoadedNotEmpty value)? loadedNotEmpty,
    TResult Function(GroceryLoadedEmpty value)? loadedEmpty,
    TResult Function(GroceryError value)? error,
    required TResult orElse(),
  }) {
    if (loadedEmpty != null) {
      return loadedEmpty(this);
    }
    return orElse();
  }
}

abstract class GroceryLoadedEmpty implements GroceryState {
  const factory GroceryLoadedEmpty() = _$GroceryLoadedEmptyImpl;
}

/// @nodoc
abstract class _$$GroceryErrorImplCopyWith<$Res> {
  factory _$$GroceryErrorImplCopyWith(
          _$GroceryErrorImpl value, $Res Function(_$GroceryErrorImpl) then) =
      __$$GroceryErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$GroceryErrorImplCopyWithImpl<$Res>
    extends _$GroceryStateCopyWithImpl<$Res, _$GroceryErrorImpl>
    implements _$$GroceryErrorImplCopyWith<$Res> {
  __$$GroceryErrorImplCopyWithImpl(
      _$GroceryErrorImpl _value, $Res Function(_$GroceryErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$GroceryErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GroceryErrorImpl implements GroceryError {
  const _$GroceryErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'GroceryState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroceryErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroceryErrorImplCopyWith<_$GroceryErrorImpl> get copyWith =>
      __$$GroceryErrorImplCopyWithImpl<_$GroceryErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Grocery> groceries) loadedNotEmpty,
    required TResult Function() loadedEmpty,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Grocery> groceries)? loadedNotEmpty,
    TResult? Function()? loadedEmpty,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Grocery> groceries)? loadedNotEmpty,
    TResult Function()? loadedEmpty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GroceryLoading value) loading,
    required TResult Function(GroceryLoadedNotEmpty value) loadedNotEmpty,
    required TResult Function(GroceryLoadedEmpty value) loadedEmpty,
    required TResult Function(GroceryError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroceryLoading value)? loading,
    TResult? Function(GroceryLoadedNotEmpty value)? loadedNotEmpty,
    TResult? Function(GroceryLoadedEmpty value)? loadedEmpty,
    TResult? Function(GroceryError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroceryLoading value)? loading,
    TResult Function(GroceryLoadedNotEmpty value)? loadedNotEmpty,
    TResult Function(GroceryLoadedEmpty value)? loadedEmpty,
    TResult Function(GroceryError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GroceryError implements GroceryState {
  const factory GroceryError(final String message) = _$GroceryErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$GroceryErrorImplCopyWith<_$GroceryErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
