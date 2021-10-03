// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beverage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Beverage _$$_BeverageFromJson(Map<String, dynamic> json) => _$_Beverage(
      id: json['id'] as String,
      name: json['name'] as String,
      createdAt:
          const TimestampConverter().fromJson(json['created_at'] as Timestamp),
    );

Map<String, dynamic> _$$_BeverageToJson(_$_Beverage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': const TimestampConverter().toJson(instance.createdAt),
    };
