// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beverage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Beverage _$$_BeverageFromJson(Map<String, dynamic> json) => _$_Beverage(
      id: json['id'] as String,
      baseId: json['baseId'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      ingredientIds: (json['ingredientIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp),
      updatedAt:
          const TimestampConverter().fromJson(json['updatedAt'] as Timestamp),
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$_BeverageToJson(_$_Beverage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'baseId': instance.baseId,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'ingredientIds': instance.ingredientIds,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'updatedAt': const TimestampConverter().toJson(instance.updatedAt),
      'userId': instance.userId,
    };
