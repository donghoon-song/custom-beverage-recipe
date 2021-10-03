import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

final loggerProvider = Provider<Logger>((ref) => Logger());
final firestoreProvider =
    Provider<FirebaseFirestore>((ref) => FirebaseFirestore.instance);
