import 'package:cubere/config/provider_logger.dart';
import 'package:cubere/view/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  await initializeServices();
  runApp(
    ProviderScope(
      child: const App(),
      observers: [ProviderLogger()],
    ),
  );
}

Future<void> initializeServices() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}
