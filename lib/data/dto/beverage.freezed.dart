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

  _Beverage call(
      {required String id,
      required String name,
      @TimestampConverter()
      @JsonKey(name: 'created_at')
          required DateTime createdAt}) {
    return _Beverage(
      id: id,
      name: name,
      createdAt: createdAt,
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
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @TimestampConverter()
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeverageCopyWith<Beverage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeverageCopyWith<$Res> {
  factory $BeverageCopyWith(Beverage value, $Res Function(Beverage) then) =
      _$BeverageCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      @TimestampConverter() @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class _$BeverageCopyWithImpl<$Res> implements $BeverageCopyWith<$Res> {
  _$BeverageCopyWithImpl(this._value, this._then);

  final Beverage _value;
  // ignore: unused_field
  final $Res Function(Beverage) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$BeverageCopyWith<$Res> implements $BeverageCopyWith<$Res> {
  factory _$BeverageCopyWith(_Beverage value, $Res Function(_Beverage) then) =
      __$BeverageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      @TimestampConverter() @JsonKey(name: 'created_at') DateTime createdAt});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_Beverage(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Beverage implements _Beverage {
  _$_Beverage(
      {required this.id,
      required this.name,
      @TimestampConverter()
      @JsonKey(name: 'created_at')
          required this.createdAt});

  factory _$_Beverage.fromJson(Map<String, dynamic> json) =>
      _$$_BeverageFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @TimestampConverter()
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @override
  String toString() {
    return 'Beverage(id: $id, name: $name, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Beverage &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(createdAt);

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
  factory _Beverage(
      {required String id,
      required String name,
      @TimestampConverter()
      @JsonKey(name: 'created_at')
          required DateTime createdAt}) = _$_Beverage;

  factory _Beverage.fromJson(Map<String, dynamic> json) = _$_Beverage.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @TimestampConverter()
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BeverageCopyWith<_Beverage> get copyWith =>
      throw _privateConstructorUsedError;
}
