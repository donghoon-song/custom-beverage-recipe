import 'package:cubere/common/failure/load_failure.dart';
import 'package:cubere/data/client/beverage_client.dart';
import 'package:cubere/data/dto/beverage.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final beverageRepositoryProvider =
    Provider<BeverageRepository>((ref) => BeverageRepository(ref));

class BeverageRepository {
  final BeverageClient _beverageClient;

  BeverageRepository(ProviderRefBase ref)
      : _beverageClient = ref.read(beverageClientProvider);

  Either<LoadFailure, Stream<List<Beverage>>> fetchBeverageListStream() {
    try {
      final snapshotStream = _beverageClient.fetchBeverageListStream();
      final beverageList = snapshotStream.map((snapshot) =>
          snapshot.docs.map((doc) => Beverage.fromDoc(doc)).toList());
      return right(beverageList);
    } catch (error) {
      return left(const LoadFailure.invalidRequest());
    }
  }

  Future<Either<LoadFailure, List<Beverage>>> fetchBeverageList() async {
    try {
      final snapshot = await _beverageClient.fetchBeverageList();
      final beverageList =
          snapshot.docs.map((doc) => Beverage.fromDoc(doc)).toList();
      return right(beverageList);
    } catch (error) {
      return left(const LoadFailure.invalidRequest());
    }
  }
}
