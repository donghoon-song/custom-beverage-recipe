import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logger/logger.dart';

final loggerProvider = Provider<Logger>((ref) => Logger());
final firestoreProvider =
    Provider<FirebaseFirestore>((ref) => FirebaseFirestore.instance);
final firebaseAuthProvider =
    Provider<FirebaseAuth>((ref) => FirebaseAuth.instance);
final googleSignInProvider = Provider<GoogleSignIn>(
  (ref) => GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  ),
);
