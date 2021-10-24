import 'package:cubere/notifier/auth/auth_state.dart';
import 'package:cubere/notifier/auth/auth_state_notifier.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeFloatingButton extends ConsumerWidget {
  const HomeFloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authProvider);
    final authAction = ref.watch(authProvider.notifier);
    final theme = Theme.of(context);
    final deviceSize = MediaQuery.of(context).size;
    return FabCircularMenu(
      fabColor: Colors.white,
      ringColor: theme.primaryColor.withOpacity(0.1),
      ringDiameter: deviceSize.width * 0.7,
      ringWidth: deviceSize.width * 0.7 * 0.2,
      children: <Widget>[
        _buildCreateButton(),
        _buildAuthButton(auth, authAction),
      ],
    );
  }

  IconButton _buildCreateButton() {
    return IconButton(
      icon: const Icon(Icons.add),
      onPressed: () {},
    );
  }

  IconButton _buildAuthButton(AuthState auth, AuthStateNotifier authAction) {
    return auth.when(
      unknown: () => IconButton(
        icon: const Icon(Icons.login_rounded),
        onPressed: () => authAction.signIn(),
      ),
      authenticated: (user) => IconButton(
        icon: const Icon(Icons.logout_rounded),
        onPressed: () => authAction.signOut(),
      ),
    );
  }
}
