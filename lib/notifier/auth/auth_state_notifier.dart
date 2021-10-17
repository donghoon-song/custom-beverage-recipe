import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:cubere/config/injection.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import 'auth_state.dart';

final authProvider = StateNotifierProvider<AuthStateNotifier, AuthState>(
    (ref) => AuthStateNotifier(ref));

class AuthStateNotifier extends StateNotifier<AuthState> {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  AuthStateNotifier(ProviderRefBase ref)
      : _firebaseAuth = ref.read(firebaseAuthProvider),
        _googleSignIn = ref.read(googleSignInProvider),
        super(const AuthState.unknown()) {
    _listenToFirebaseAuth();
  }

  _listenToFirebaseAuth() {
    final authStream = _firebaseAuth.authStateChanges();
    authStream.listen((user) {
      if (user == null) {
        state = const AuthState.unknown();
      } else {
        state = AuthState.authenticated(user);
      }
    });
  }

  signIn() {
    // _signInWithGoogle();
    _signInWithApple();
  }

  signOut() {
    _firebaseAuth.signOut();
  }

  Future<UserCredential> _signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    return _firebaseAuth.signInWithCredential(credential);
  }

  Future<UserCredential> _signInWithApple() async {
    final rawNonce = generateNonce();
    final nonce = sha256ofString(rawNonce);

    final appleCredential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
      nonce: nonce,
    );

    final oauthCredential = OAuthProvider("apple.com").credential(
      idToken: appleCredential.identityToken,
      rawNonce: rawNonce,
    );

    return _firebaseAuth.signInWithCredential(oauthCredential);
  }

  String generateNonce([int length = 32]) {
    const charset =
        '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = Random.secure();
    return List.generate(length, (_) => charset[random.nextInt(charset.length)])
        .join();
  }

  String sha256ofString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }
}
