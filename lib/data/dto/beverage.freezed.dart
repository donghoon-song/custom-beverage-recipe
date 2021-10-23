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
      required String baseId,
      required String name,
      required String description,
      required String imageUrl,
      required List<String> ingredientIds,
      @TimestampConverter() required DateTime createdAt,
      @TimestampConverter() required DateTime updatedAt,
      required String userId}) {
    return _Beverage(
      id: id,
      baseId: baseId,
      name: name,
      description: description,
      imageUrl: imageUrl,
      ingredientIds: ingredientIds,
      createdAt: createdAt,
      updatedAt: updatedAt,
      userId: userId,
    );
  }

  Beverage fromJson(Map<String, Object?> json) {
    return Beverage.fromJson(json);
  }
}

/// @nodoc
const $Beverage = _$BeverageTearOff();

/// @nodoc
mixin _$Beverage {
  String get id => throw _privateConstructorUsedError;
  String get baseId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  List<String> get ingredientIds => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

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
      String baseId,
      String name,
      String description,
      String imageUrl,
      List<String> ingredientIds,
      @TimestampConverter() DateTime createdAt,
      @TimestampConverter() DateTime updatedAt,
      String userId});
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
    Object? baseId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? ingredientIds = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      baseId: baseId == freezed
          ? _value.baseId
          : baseId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      ingredientIds: ingredientIds == freezed
          ? _value.ingredientIds
          : ingredientIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
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
      String baseId,
      String name,
      String description,
      String imageUrl,
      List<String> ingredientIds,
      @TimestampConverter() DateTime createdAt,
      @TimestampConverter() DateTime updatedAt,
      String userId});
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
    Object? baseId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? ingredientIds = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? userId = freezed,
  }) {
    return _then(_Beverage(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      baseId: baseId == freezed
          ? _value.baseId
          : baseId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      ingredientIds: ingredientIds == freezed
          ? _value.ingredientIds
          : ingredientIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Beverage implements _Beverage {
  _$_Beverage(
      {required this.id,
      required this.baseId,
      required this.name,
      required this.description,
      required this.imageUrl,
      required this.ingredientIds,
      @TimestampConverter() required this.createdAt,
      @TimestampConverter() required this.updatedAt,
      required this.userId});

  factory _$_Beverage.fromJson(Map<String, dynamic> json) =>
      _$$_BeverageFromJson(json);

  @override
  final String id;
  @override
  final String baseId;
  @override
  final String name;
  @override
  final String description;
  @override
  final String imageUrl;
  @override
  final List<String> ingredientIds;
  @override
  @TimestampConverter()
  final DateTime createdAt;
  @override
  @TimestampConverter()
  final DateTime updatedAt;
  @override
  final String userId;

  @override
  String toString() {
    return 'Beverage(id: $id, baseId: $baseId, name: $name, description: $description, imageUrl: $imageUrl, ingredientIds: $ingredientIds, createdAt: $createdAt, updatedAt: $updatedAt, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Beverage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.baseId, baseId) || other.baseId == baseId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.ingredientIds, ingredientIds) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      baseId,
      name,
      description,
      imageUrl,
      const DeepCollectionEquality().hash(ingredientIds),
      createdAt,
      updatedAt,
      userId);

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
      required String baseId,
      required String name,
      required String description,
      required String imageUrl,
      required List<String> ingredientIds,
      @TimestampConverter() required DateTime createdAt,
      @TimestampConverter() required DateTime updatedAt,
      required String userId}) = _$_Beverage;

  factory _Beverage.fromJson(Map<String, dynamic> json) = _$_Beverage.fromJson;

  @override
  String get id;
  @override
  String get baseId;
  @override
  String get name;
  @override
  String get description;
  @override
  String get imageUrl;
  @override
  List<String> get ingredientIds;
  @override
  @TimestampConverter()
  DateTime get createdAt;
  @override
  @TimestampConverter()
  DateTime get updatedAt;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$BeverageCopyWith<_Beverage> get copyWith =>
      throw _privateConstructorUsedError;
}
