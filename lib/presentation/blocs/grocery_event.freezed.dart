// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grocery_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GroceryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadGroceries,
    required TResult Function(String groceryName) addGrocery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadGroceries,
    TResult? Function(String groceryName)? addGrocery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadGroceries,
    TResult Function(String groceryName)? addGrocery,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadGroceries value) loadGroceries,
    required TResult Function(AddGrocery value) addGrocery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadGroceries value)? loadGroceries,
    TResult? Function(AddGrocery value)? addGrocery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadGroceries value)? loadGroceries,
    TResult Function(AddGrocery value)? addGrocery,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroceryEventCopyWith<$Res> {
  factory $GroceryEventCopyWith(
          GroceryEvent value, $Res Function(GroceryEvent) then) =
      _$GroceryEventCopyWithImpl<$Res, GroceryEvent>;
}

/// @nodoc
class _$GroceryEventCopyWithImpl<$Res, $Val extends GroceryEvent>
    implements $GroceryEventCopyWith<$Res> {
  _$GroceryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadGroceriesImplCopyWith<$Res> {
  factory _$$LoadGroceriesImplCopyWith(
          _$LoadGroceriesImpl value, $Res Function(_$LoadGroceriesImpl) then) =
      __$$LoadGroceriesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadGroceriesImplCopyWithImpl<$Res>
    extends _$GroceryEventCopyWithImpl<$Res, _$LoadGroceriesImpl>
    implements _$$LoadGroceriesImplCopyWith<$Res> {
  __$$LoadGroceriesImplCopyWithImpl(
      _$LoadGroceriesImpl _value, $Res Function(_$LoadGroceriesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadGroceriesImpl implements LoadGroceries {
  const _$LoadGroceriesImpl();

  @override
  String toString() {
    return 'GroceryEvent.loadGroceries()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadGroceriesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadGroceries,
    required TResult Function(String groceryName) addGrocery,
  }) {
    return loadGroceries();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadGroceries,
    TResult? Function(String groceryName)? addGrocery,
  }) {
    return loadGroceries?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadGroceries,
    TResult Function(String groceryName)? addGrocery,
    required TResult orElse(),
  }) {
    if (loadGroceries != null) {
      return loadGroceries();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadGroceries value) loadGroceries,
    required TResult Function(AddGrocery value) addGrocery,
  }) {
    return loadGroceries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadGroceries value)? loadGroceries,
    TResult? Function(AddGrocery value)? addGrocery,
  }) {
    return loadGroceries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadGroceries value)? loadGroceries,
    TResult Function(AddGrocery value)? addGrocery,
    required TResult orElse(),
  }) {
    if (loadGroceries != null) {
      return loadGroceries(this);
    }
    return orElse();
  }
}

abstract class LoadGroceries implements GroceryEvent {
  const factory LoadGroceries() = _$LoadGroceriesImpl;
}

/// @nodoc
abstract class _$$AddGroceryImplCopyWith<$Res> {
  factory _$$AddGroceryImplCopyWith(
          _$AddGroceryImpl value, $Res Function(_$AddGroceryImpl) then) =
      __$$AddGroceryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String groceryName});
}

/// @nodoc
class __$$AddGroceryImplCopyWithImpl<$Res>
    extends _$GroceryEventCopyWithImpl<$Res, _$AddGroceryImpl>
    implements _$$AddGroceryImplCopyWith<$Res> {
  __$$AddGroceryImplCopyWithImpl(
      _$AddGroceryImpl _value, $Res Function(_$AddGroceryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groceryName = null,
  }) {
    return _then(_$AddGroceryImpl(
      null == groceryName
          ? _value.groceryName
          : groceryName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddGroceryImpl implements AddGrocery {
  const _$AddGroceryImpl(this.groceryName);

  @override
  final String groceryName;

  @override
  String toString() {
    return 'GroceryEvent.addGrocery(groceryName: $groceryName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddGroceryImpl &&
            (identical(other.groceryName, groceryName) ||
                other.groceryName == groceryName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groceryName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddGroceryImplCopyWith<_$AddGroceryImpl> get copyWith =>
      __$$AddGroceryImplCopyWithImpl<_$AddGroceryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadGroceries,
    required TResult Function(String groceryName) addGrocery,
  }) {
    return addGrocery(groceryName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadGroceries,
    TResult? Function(String groceryName)? addGrocery,
  }) {
    return addGrocery?.call(groceryName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadGroceries,
    TResult Function(String groceryName)? addGrocery,
    required TResult orElse(),
  }) {
    if (addGrocery != null) {
      return addGrocery(groceryName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadGroceries value) loadGroceries,
    required TResult Function(AddGrocery value) addGrocery,
  }) {
    return addGrocery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadGroceries value)? loadGroceries,
    TResult? Function(AddGrocery value)? addGrocery,
  }) {
    return addGrocery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadGroceries value)? loadGroceries,
    TResult Function(AddGrocery value)? addGrocery,
    required TResult orElse(),
  }) {
    if (addGrocery != null) {
      return addGrocery(this);
    }
    return orElse();
  }
}

abstract class AddGrocery implements GroceryEvent {
  const factory AddGrocery(final String groceryName) = _$AddGroceryImpl;

  String get groceryName;
  @JsonKey(ignore: true)
  _$$AddGroceryImplCopyWith<_$AddGroceryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
