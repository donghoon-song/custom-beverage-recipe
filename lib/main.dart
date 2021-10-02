import 'package:cubere/config/provider_logger.dart';
import 'package:cubere/view/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: const App(),
      observers: [ProviderLogger()],
    ),
  );
}
