import 'package:cubere/config/injection.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'auth_state.dart';

final authProvider = StateNotifierProvider<AuthStateNotifier, AuthState>(
    (ref) => AuthStateNotifier(ref));

class AuthStateNotifier extends StateNotifier<AuthState> {
  final FirebaseAuth _firebaseAuthProvider;

  AuthStateNotifier(ProviderRefBase ref)
      : _firebaseAuthProvider = ref.read(firebaseAuthProvider),
        super(const AuthState.unknown()) {
    listenToFirebaseAuth();
  }

  listenToFirebaseAuth() {
    final authStream = _firebaseAuthProvider.authStateChanges();
    authStream.listen((user) {
      if (user == null) {
        state = const AuthState.unknown();
      } else {
        state = AuthState.authenticated(user);
      }
    });
  }
}
