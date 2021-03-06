import 'package:cubere/notifier/auth/auth_state_notifier.dart';
import 'package:cubere/notifier/beverage/beverage_list_state_notifier.dart';
import 'package:cubere/view/home/home_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'beverage_list.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final beverageList = ref.watch(beverageListProvider);
    final auth = ref.watch(authProvider);
    return Scaffold(
      appBar: AppBar(
        title: auth.when(
          unknown: () => const Text('Guest'),
          authenticated: (user) => Text(user.uid),
        ),
      ),
      body: Center(
        child: beverageList.maybeWhen(
          loaded: (list) => BeverageList(list: list),
          error: (message) => Text(message),
          orElse: () => const CircularProgressIndicator(),
        ),
      ),
      floatingActionButton: const HomeFloatingButton(),
    );
  }
}
