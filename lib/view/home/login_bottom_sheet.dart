import 'package:cubere/common/const/ui.dart';
import 'package:cubere/notifier/auth/auth_state_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginBottomSheet extends ConsumerWidget {
  const LoginBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context).textTheme;
    final authAction = ref.watch(authProvider.notifier);
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(UI.cardPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(UI.cardRadius),
        ),
        height: UI.bottomSheetHeight,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('로그인', style: theme.headline6),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildAppleSignInButton(context, authAction),
                  _buildGoogleSignInButton(context, authAction),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  IconButton _buildAppleSignInButton(
    BuildContext context,
    AuthStateNotifier authAction,
  ) {
    return IconButton(
      iconSize: UI.iconRadius,
      onPressed: () => authAction.signInWithApple().then(
            (value) => Navigator.of(context).pop(),
          ),
      icon: const Icon(Icons.circle),
    );
  }

  IconButton _buildGoogleSignInButton(
    BuildContext context,
    AuthStateNotifier authAction,
  ) {
    return IconButton(
      iconSize: UI.iconRadius,
      onPressed: () => authAction.signInWithGoogle().then(
            (value) => Navigator.of(context).pop(),
          ),
      icon: const Icon(Icons.circle),
    );
  }
}
