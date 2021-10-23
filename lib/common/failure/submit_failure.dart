import 'package:freezed_annotation/freezed_annotation.dart';

part 'submit_failure.freezed.dart';

@freezed
class SubmitFailure with _$SubmitFailure {
  const factory SubmitFailure.invalidRequest() = _InvalidRequest;
  const factory SubmitFailure.serverError() = _ServerError;
}
