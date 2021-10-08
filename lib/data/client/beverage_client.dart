import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cubere/config/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final beverageClientProvider =
    Provider<BeverageClient>((ref) => BeverageClient(ref));

class BeverageClient {
  final CollectionReference _beverages;

  BeverageClient(ProviderRefBase ref)
      : _beverages = ref.read(firestoreProvider).collection('beverage');

  Stream<QuerySnapshot> fetchBeverageListStream() {
    return _beverages.orderBy('createdAt', descending: true).snapshots();
  }

  Future<QuerySnapshot> fetchBeverageList() {
    return _beverages.orderBy('createdAt', descending: true).get();
  }
}
