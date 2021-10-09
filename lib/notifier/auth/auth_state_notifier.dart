import 'package:cubere/config/injection.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'auth_state.dart';

final authProvider = StateNotifierProvider<AuthStateNotifier, AuthState>(
    (ref) => AuthStateNotifier(ref));

class AuthStateNotifier extends StateNotifier<AuthState> {
  final FirebaseAuth _firebaseAuthProvider;
  final GoogleSignIn _googleSignInProvider;

  AuthStateNotifier(ProviderRefBase ref)
      : _firebaseAuthProvider = ref.read(firebaseAuthProvider),
        _googleSignInProvider = ref.read(googleSignInProvider),
        super(const AuthState.unknown()) {
    _listenToFirebaseAuth();
  }

  _listenToFirebaseAuth() {
    final authStream = _firebaseAuthProvider.authStateChanges();
    authStream.listen((user) {
      if (user == null) {
        state = const AuthState.unknown();
      } else {
        state = AuthState.authenticated(user);
      }
    });
  }

  signIn() {
    _signInWithGoogle();
  }

  signOut() {
    _firebaseAuthProvider.signOut();
  }

  Future<UserCredential> _signInWithGoogle() async {
    final GoogleSignInAccount? googleUser =
        await _googleSignInProvider.signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    return _firebaseAuthProvider.signInWithCredential(credential);
  }
}
