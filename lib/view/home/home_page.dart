import 'package:cubere/notifier/beverage/beverage_list_state_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'beverage_list.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
    ref.read(beverageListStateProvider.notifier).getBeverageList();
  }

  @override
  Widget build(BuildContext context) {
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
