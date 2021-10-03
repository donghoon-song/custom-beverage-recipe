import 'package:cubere/notifier/beverage/beverage_list_state_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'beverage_list.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final beverageListState = ref.watch(beverageListStateProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: beverageListState.maybeWhen(
          loaded: (list) => BeverageList(list: list),
          error: (message) => Text(message),
          orElse: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
