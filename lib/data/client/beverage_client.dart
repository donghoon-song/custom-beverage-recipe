import 'package:cubere/data/dto/beverage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final beverageClientProvider =
    Provider<BeverageClient>((ref) => BeverageClient());

class BeverageClient {
  Future<List<Beverage>> fetchBeverageList() async {
    await Future.delayed(const Duration(seconds: 1));
    return [
      Beverage(name: 'test1'),
      Beverage(name: 'test2'),
      Beverage(name: 'test3'),
      Beverage(name: 'test4'),
      Beverage(name: 'test5'),
      Beverage(name: 'test6'),
      Beverage(name: 'test7'),
      Beverage(name: 'test8'),
      Beverage(name: 'test9'),
    ];
  }
}
