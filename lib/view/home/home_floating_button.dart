import 'package:cubere/common/const/ui.dart';
import 'package:cubere/notifier/auth/auth_state_notifier.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'login_bottom_sheet.dart';

class HomeFloatingButton extends ConsumerWidget {
  const HomeFloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final deviceSize = MediaQuery.of(context).size;
    final auth = ref.watch(authProvider);
    final authAction = ref.watch(authProvider.notifier);
    return FabCircularMenu(
      fabColor: Colors.white,
      ringColor: theme.primaryColor.withOpacity(0.1),
      ringDiameter: deviceSize.width * 0.7,
      ringWidth: deviceSize.width * 0.7 * 0.2,
      children: <Widget>[
        _buildCreateButton(),
        auth.when(
          unknown: () => _buildSignInButton(context),
          authenticated: (user) => _buildSignOutButton(authAction),
        ),
      ],
    );
  }

  IconButton _buildCreateButton() {
    return IconButton(
      icon: const Icon(Icons.add),
      onPressed: () {},
    );
  }

  IconButton _buildSignInButton(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.login_rounded),
      onPressed: () => showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(UI.cardRadius),
        ),
        builder: (ctx) => const LoginBottomSheet(),
      ),
    );
  }

  IconButton _buildSignOutButton(AuthStateNotifier authAction) {
    return IconButton(
      icon: const Icon(Icons.logout_rounded),
      onPressed: () => authAction.signOut(),
    );
  }
}
