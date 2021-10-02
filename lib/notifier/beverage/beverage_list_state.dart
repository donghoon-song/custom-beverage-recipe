import 'package:cubere/data/dto/beverage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'beverage_list_state.freezed.dart';

@freezed
class BeverageListState with _$BeverageListState {
  const factory BeverageListState.initial() = _Initial;
  const factory BeverageListState.loading() = _Loading;
  const factory BeverageListState.loaded(List<Beverage> beverageList) = _Loaded;
  const factory BeverageListState.error(String message) = _Error;
}
