import 'package:freezed_annotation/freezed_annotation.dart';

part 'beverage.freezed.dart';
part 'beverage.g.dart';

@freezed
class Beverage with _$Beverage {
  factory Beverage({required String name}) = _Beverage;

  factory Beverage.fromJson(Map<String, dynamic> json) =>
      _$BeverageFromJson(json);
}
