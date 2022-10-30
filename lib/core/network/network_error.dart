import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_error.freezed.dart';

@freezed
class NetworkError with _$NetworkError {
  const NetworkError._();

  const factory NetworkError.httpInternalServerError(String errorBody) =
      HttpInternalServerError;

  const factory NetworkError.httpUnknownError(String message) =
      HttpUnknownError;

  const factory NetworkError.noInternetError() = NoInternetError;

  String get message => when(
        httpInternalServerError: ((errorBody) => errorBody),
        httpUnknownError: ((errorBody) => errorBody),
        noInternetError: (() => 'No Internet'),
      );
}
