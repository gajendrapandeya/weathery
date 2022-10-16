// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'network_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorBody) httpInternalServerError,
    required TResult Function(String message) httpUnknownError,
    required TResult Function() noInternetError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorBody)? httpInternalServerError,
    TResult? Function(String message)? httpUnknownError,
    TResult? Function()? noInternetError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorBody)? httpInternalServerError,
    TResult Function(String message)? httpUnknownError,
    TResult Function()? noInternetError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpInternalServerError value)
        httpInternalServerError,
    required TResult Function(HttpUnknownError value) httpUnknownError,
    required TResult Function(NoInternetError value) noInternetError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpInternalServerError value)? httpInternalServerError,
    TResult? Function(HttpUnknownError value)? httpUnknownError,
    TResult? Function(NoInternetError value)? noInternetError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpInternalServerError value)? httpInternalServerError,
    TResult Function(HttpUnknownError value)? httpUnknownError,
    TResult Function(NoInternetError value)? noInternetError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkErrorCopyWith<$Res> {
  factory $NetworkErrorCopyWith(
          NetworkError value, $Res Function(NetworkError) then) =
      _$NetworkErrorCopyWithImpl<$Res, NetworkError>;
}

/// @nodoc
class _$NetworkErrorCopyWithImpl<$Res, $Val extends NetworkError>
    implements $NetworkErrorCopyWith<$Res> {
  _$NetworkErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HttpInternalServerErrorCopyWith<$Res> {
  factory _$$HttpInternalServerErrorCopyWith(_$HttpInternalServerError value,
          $Res Function(_$HttpInternalServerError) then) =
      __$$HttpInternalServerErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorBody});
}

/// @nodoc
class __$$HttpInternalServerErrorCopyWithImpl<$Res>
    extends _$NetworkErrorCopyWithImpl<$Res, _$HttpInternalServerError>
    implements _$$HttpInternalServerErrorCopyWith<$Res> {
  __$$HttpInternalServerErrorCopyWithImpl(_$HttpInternalServerError _value,
      $Res Function(_$HttpInternalServerError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorBody = null,
  }) {
    return _then(_$HttpInternalServerError(
      null == errorBody
          ? _value.errorBody
          : errorBody // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HttpInternalServerError extends HttpInternalServerError {
  const _$HttpInternalServerError(this.errorBody) : super._();

  @override
  final String errorBody;

  @override
  String toString() {
    return 'NetworkError.httpInternalServerError(errorBody: $errorBody)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpInternalServerError &&
            (identical(other.errorBody, errorBody) ||
                other.errorBody == errorBody));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorBody);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HttpInternalServerErrorCopyWith<_$HttpInternalServerError> get copyWith =>
      __$$HttpInternalServerErrorCopyWithImpl<_$HttpInternalServerError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorBody) httpInternalServerError,
    required TResult Function(String message) httpUnknownError,
    required TResult Function() noInternetError,
  }) {
    return httpInternalServerError(errorBody);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorBody)? httpInternalServerError,
    TResult? Function(String message)? httpUnknownError,
    TResult? Function()? noInternetError,
  }) {
    return httpInternalServerError?.call(errorBody);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorBody)? httpInternalServerError,
    TResult Function(String message)? httpUnknownError,
    TResult Function()? noInternetError,
    required TResult orElse(),
  }) {
    if (httpInternalServerError != null) {
      return httpInternalServerError(errorBody);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpInternalServerError value)
        httpInternalServerError,
    required TResult Function(HttpUnknownError value) httpUnknownError,
    required TResult Function(NoInternetError value) noInternetError,
  }) {
    return httpInternalServerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpInternalServerError value)? httpInternalServerError,
    TResult? Function(HttpUnknownError value)? httpUnknownError,
    TResult? Function(NoInternetError value)? noInternetError,
  }) {
    return httpInternalServerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpInternalServerError value)? httpInternalServerError,
    TResult Function(HttpUnknownError value)? httpUnknownError,
    TResult Function(NoInternetError value)? noInternetError,
    required TResult orElse(),
  }) {
    if (httpInternalServerError != null) {
      return httpInternalServerError(this);
    }
    return orElse();
  }
}

abstract class HttpInternalServerError extends NetworkError {
  const factory HttpInternalServerError(final String errorBody) =
      _$HttpInternalServerError;
  const HttpInternalServerError._() : super._();

  String get errorBody;
  @JsonKey(ignore: true)
  _$$HttpInternalServerErrorCopyWith<_$HttpInternalServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HttpUnknownErrorCopyWith<$Res> {
  factory _$$HttpUnknownErrorCopyWith(
          _$HttpUnknownError value, $Res Function(_$HttpUnknownError) then) =
      __$$HttpUnknownErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$HttpUnknownErrorCopyWithImpl<$Res>
    extends _$NetworkErrorCopyWithImpl<$Res, _$HttpUnknownError>
    implements _$$HttpUnknownErrorCopyWith<$Res> {
  __$$HttpUnknownErrorCopyWithImpl(
      _$HttpUnknownError _value, $Res Function(_$HttpUnknownError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$HttpUnknownError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HttpUnknownError extends HttpUnknownError {
  const _$HttpUnknownError(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'NetworkError.httpUnknownError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpUnknownError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HttpUnknownErrorCopyWith<_$HttpUnknownError> get copyWith =>
      __$$HttpUnknownErrorCopyWithImpl<_$HttpUnknownError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorBody) httpInternalServerError,
    required TResult Function(String message) httpUnknownError,
    required TResult Function() noInternetError,
  }) {
    return httpUnknownError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorBody)? httpInternalServerError,
    TResult? Function(String message)? httpUnknownError,
    TResult? Function()? noInternetError,
  }) {
    return httpUnknownError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorBody)? httpInternalServerError,
    TResult Function(String message)? httpUnknownError,
    TResult Function()? noInternetError,
    required TResult orElse(),
  }) {
    if (httpUnknownError != null) {
      return httpUnknownError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpInternalServerError value)
        httpInternalServerError,
    required TResult Function(HttpUnknownError value) httpUnknownError,
    required TResult Function(NoInternetError value) noInternetError,
  }) {
    return httpUnknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpInternalServerError value)? httpInternalServerError,
    TResult? Function(HttpUnknownError value)? httpUnknownError,
    TResult? Function(NoInternetError value)? noInternetError,
  }) {
    return httpUnknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpInternalServerError value)? httpInternalServerError,
    TResult Function(HttpUnknownError value)? httpUnknownError,
    TResult Function(NoInternetError value)? noInternetError,
    required TResult orElse(),
  }) {
    if (httpUnknownError != null) {
      return httpUnknownError(this);
    }
    return orElse();
  }
}

abstract class HttpUnknownError extends NetworkError {
  const factory HttpUnknownError(final String message) = _$HttpUnknownError;
  const HttpUnknownError._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$HttpUnknownErrorCopyWith<_$HttpUnknownError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoInternetErrorCopyWith<$Res> {
  factory _$$NoInternetErrorCopyWith(
          _$NoInternetError value, $Res Function(_$NoInternetError) then) =
      __$$NoInternetErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoInternetErrorCopyWithImpl<$Res>
    extends _$NetworkErrorCopyWithImpl<$Res, _$NoInternetError>
    implements _$$NoInternetErrorCopyWith<$Res> {
  __$$NoInternetErrorCopyWithImpl(
      _$NoInternetError _value, $Res Function(_$NoInternetError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoInternetError extends NoInternetError {
  const _$NoInternetError() : super._();

  @override
  String toString() {
    return 'NetworkError.noInternetError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoInternetError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorBody) httpInternalServerError,
    required TResult Function(String message) httpUnknownError,
    required TResult Function() noInternetError,
  }) {
    return noInternetError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorBody)? httpInternalServerError,
    TResult? Function(String message)? httpUnknownError,
    TResult? Function()? noInternetError,
  }) {
    return noInternetError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorBody)? httpInternalServerError,
    TResult Function(String message)? httpUnknownError,
    TResult Function()? noInternetError,
    required TResult orElse(),
  }) {
    if (noInternetError != null) {
      return noInternetError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpInternalServerError value)
        httpInternalServerError,
    required TResult Function(HttpUnknownError value) httpUnknownError,
    required TResult Function(NoInternetError value) noInternetError,
  }) {
    return noInternetError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpInternalServerError value)? httpInternalServerError,
    TResult? Function(HttpUnknownError value)? httpUnknownError,
    TResult? Function(NoInternetError value)? noInternetError,
  }) {
    return noInternetError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpInternalServerError value)? httpInternalServerError,
    TResult Function(HttpUnknownError value)? httpUnknownError,
    TResult Function(NoInternetError value)? noInternetError,
    required TResult orElse(),
  }) {
    if (noInternetError != null) {
      return noInternetError(this);
    }
    return orElse();
  }
}

abstract class NoInternetError extends NetworkError {
  const factory NoInternetError() = _$NoInternetError;
  const NoInternetError._() : super._();
}
