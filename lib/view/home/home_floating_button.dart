import 'package:cubere/notifier/auth/auth_state_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeFloatingButton extends ConsumerWidget {
  const HomeFloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authProvider);
    final authAction = ref.watch(authProvider.notifier);
    return auth.when(
      unknown: () => FloatingActionButton(
        child: const Icon(Icons.login_rounded),
        onPressed: () => authAction.signIn(),
      ),
      authenticated: (user) => FloatingActionButton(
        child: const Icon(Icons.logout_rounded),
        onPressed: () => authAction.signOut(),
      ),
    );
  }
}
