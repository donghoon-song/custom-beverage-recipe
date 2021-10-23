import 'package:freezed_annotation/freezed_annotation.dart';

part 'load_failure.freezed.dart';

@freezed
class LoadFailure with _$LoadFailure {
  const factory LoadFailure.invalidRequest() = _InvalidRequest;
  const factory LoadFailure.serverError() = _ServerError;
}
