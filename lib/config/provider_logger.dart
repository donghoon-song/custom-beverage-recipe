import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

class ProviderLogger extends ProviderObserver {
  final Logger _logger = Logger();

  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    _logger.d('[provider] ${provider.name ?? provider.runtimeType}'
        '\n-> $previousValue'
        '\n-> $newValue');
  }
}
