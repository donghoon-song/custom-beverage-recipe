// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'submit_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SubmitFailureTearOff {
  const _$SubmitFailureTearOff();

  _InvalidRequest invalidRequest() {
    return const _InvalidRequest();
  }

  _ServerError serverError() {
    return const _ServerError();
  }
}

/// @nodoc
const $SubmitFailure = _$SubmitFailureTearOff();

/// @nodoc
mixin _$SubmitFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidRequest,
    required TResult Function() serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? invalidRequest,
    TResult Function()? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidRequest,
    TResult Function()? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidRequest value) invalidRequest,
    required TResult Function(_ServerError value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InvalidRequest value)? invalidRequest,
    TResult Function(_ServerError value)? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidRequest value)? invalidRequest,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitFailureCopyWith<$Res> {
  factory $SubmitFailureCopyWith(
          SubmitFailure value, $Res Function(SubmitFailure) then) =
      _$SubmitFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmitFailureCopyWithImpl<$Res>
    implements $SubmitFailureCopyWith<$Res> {
  _$SubmitFailureCopyWithImpl(this._value, this._then);

  final SubmitFailure _value;
  // ignore: unused_field
  final $Res Function(SubmitFailure) _then;
}

/// @nodoc
abstract class _$InvalidRequestCopyWith<$Res> {
  factory _$InvalidRequestCopyWith(
          _InvalidRequest value, $Res Function(_InvalidRequest) then) =
      __$InvalidRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$InvalidRequestCopyWithImpl<$Res>
    extends _$SubmitFailureCopyWithImpl<$Res>
    implements _$InvalidRequestCopyWith<$Res> {
  __$InvalidRequestCopyWithImpl(
      _InvalidRequest _value, $Res Function(_InvalidRequest) _then)
      : super(_value, (v) => _then(v as _InvalidRequest));

  @override
  _InvalidRequest get _value => super._value as _InvalidRequest;
}

/// @nodoc

class _$_InvalidRequest implements _InvalidRequest {
  const _$_InvalidRequest();

  @override
  String toString() {
    return 'SubmitFailure.invalidRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InvalidRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidRequest,
    required TResult Function() serverError,
  }) {
    return invalidRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? invalidRequest,
    TResult Function()? serverError,
  }) {
    return invalidRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidRequest,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (invalidRequest != null) {
      return invalidRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidRequest value) invalidRequest,
    required TResult Function(_ServerError value) serverError,
  }) {
    return invalidRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InvalidRequest value)? invalidRequest,
    TResult Function(_ServerError value)? serverError,
  }) {
    return invalidRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidRequest value)? invalidRequest,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (invalidRequest != null) {
      return invalidRequest(this);
    }
    return orElse();
  }
}

abstract class _InvalidRequest implements SubmitFailure {
  const factory _InvalidRequest() = _$_InvalidRequest;
}

/// @nodoc
abstract class _$ServerErrorCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res> extends _$SubmitFailureCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(
      _ServerError _value, $Res Function(_ServerError) _then)
      : super(_value, (v) => _then(v as _ServerError));

  @override
  _ServerError get _value => super._value as _ServerError;
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError();

  @override
  String toString() {
    return 'SubmitFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidRequest,
    required TResult Function() serverError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? invalidRequest,
    TResult Function()? serverError,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidRequest,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidRequest value) invalidRequest,
    required TResult Function(_ServerError value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InvalidRequest value)? invalidRequest,
    TResult Function(_ServerError value)? serverError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidRequest value)? invalidRequest,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements SubmitFailure {
  const factory _ServerError() = _$_ServerError;
}
