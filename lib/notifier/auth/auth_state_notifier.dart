import 'package:cubere/service/auth_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'auth_state.dart';

final authProvider = StateNotifierProvider<AuthStateNotifier, AuthState>(
    (ref) => AuthStateNotifier(ref));

class AuthStateNotifier extends StateNotifier<AuthState> {
  final AuthService _authService;

  AuthStateNotifier(ProviderRefBase ref)
      : _authService = ref.read(authServiceProvider),
        super(const AuthState.unknown()) {
    _listenToAuthStream();
  }

  _listenToAuthStream() {
    _authService.authStream.listen((user) {
      if (user == null) {
        state = const AuthState.unknown();
      } else {
        state = AuthState.authenticated(user);
      }
    });
  }

  signIn() {
    _authService.signInWithGoogle();
    // _authService.signInWithApple();
  }

  signOut() {
    _authService.signOut();
  }
}
