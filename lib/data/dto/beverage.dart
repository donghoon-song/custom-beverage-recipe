import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'converter.dart';

part 'beverage.freezed.dart';
part 'beverage.g.dart';

@freezed
class Beverage with _$Beverage {
  factory Beverage({
    required String id,
    required String baseId,
    required String name,
    required String description,
    required String imageUrl,
    required List<String> ingredientIds,
    @TimestampConverter() required DateTime createdAt,
    @TimestampConverter() required DateTime updatedAt,
    required String userId,
  }) = _Beverage;

  factory Beverage.fromJson(Map<String, dynamic> json) =>
      _$BeverageFromJson(json);

  factory Beverage.fromDoc(DocumentSnapshot documentSnapshot) {
    return _$BeverageFromJson((documentSnapshot.data() as Map<String, dynamic>)
      ..['id'] = documentSnapshot.id);
  }
}
