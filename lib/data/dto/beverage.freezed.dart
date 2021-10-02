// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'beverage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Beverage _$BeverageFromJson(Map<String, dynamic> json) {
  return _Beverage.fromJson(json);
}

/// @nodoc
class _$BeverageTearOff {
  const _$BeverageTearOff();

  _Beverage call({required String name}) {
    return _Beverage(
      name: name,
    );
  }

  Beverage fromJson(Map<String, Object> json) {
    return Beverage.fromJson(json);
  }
}

/// @nodoc
const $Beverage = _$BeverageTearOff();

/// @nodoc
mixin _$Beverage {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeverageCopyWith<Beverage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeverageCopyWith<$Res> {
  factory $BeverageCopyWith(Beverage value, $Res Function(Beverage) then) =
      _$BeverageCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$BeverageCopyWithImpl<$Res> implements $BeverageCopyWith<$Res> {
  _$BeverageCopyWithImpl(this._value, this._then);

  final Beverage _value;
  // ignore: unused_field
  final $Res Function(Beverage) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BeverageCopyWith<$Res> implements $BeverageCopyWith<$Res> {
  factory _$BeverageCopyWith(_Beverage value, $Res Function(_Beverage) then) =
      __$BeverageCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$BeverageCopyWithImpl<$Res> extends _$BeverageCopyWithImpl<$Res>
    implements _$BeverageCopyWith<$Res> {
  __$BeverageCopyWithImpl(_Beverage _value, $Res Function(_Beverage) _then)
      : super(_value, (v) => _then(v as _Beverage));

  @override
  _Beverage get _value => super._value as _Beverage;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_Beverage(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Beverage implements _Beverage {
  _$_Beverage({required this.name});

  factory _$_Beverage.fromJson(Map<String, dynamic> json) =>
      _$$_BeverageFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'Beverage(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Beverage &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$BeverageCopyWith<_Beverage> get copyWith =>
      __$BeverageCopyWithImpl<_Beverage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BeverageToJson(this);
  }
}

abstract class _Beverage implements Beverage {
  factory _Beverage({required String name}) = _$_Beverage;

  factory _Beverage.fromJson(Map<String, dynamic> json) = _$_Beverage.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BeverageCopyWith<_Beverage> get copyWith =>
      throw _privateConstructorUsedError;
}
