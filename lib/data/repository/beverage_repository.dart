import 'package:cubere/data/client/beverage_client.dart';
import 'package:cubere/data/dto/beverage.dart';
import 'package:cubere/domain/common/failures/load_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final beverageRepositoryProvider =
    Provider<BeverageRepository>((ref) => BeverageRepository(ref));

class BeverageRepository {
  final BeverageClient _beverageClient;

  BeverageRepository(ProviderRefBase ref)
      : _beverageClient = ref.read(beverageClientProvider);

  Future<Either<LoadFailure, List<Beverage>>> fetchBeverageList() async {
    try {
      final beverageList = await _beverageClient.fetchBeverageList();
      return right(beverageList);
    } catch (error) {
      return left(const LoadFailure.invalidRequest());
    }
  }
}
