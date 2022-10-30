import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:weathery/core/network/network_error.dart';
import 'package:weathery/core/network/network_info.dart';
import 'package:weathery/features/home/data/data_sources/source/remote/weather_remote_data_source.dart';
import 'package:weathery/features/home/domain/entities/current_condition/current_condition.dart';
import 'package:weathery/features/home/domain/repositories/weather_repo.dart';

@Injectable(as: WeatherRepo)
class WeatherRepoImpl implements WeatherRepo {
  final WeatherRemoteDataSource _remoteDataSource;
  final NetworkInfo _networkInfo;

  WeatherRepoImpl(
    this._remoteDataSource,
    this._networkInfo,
  );

  @override
  Future<Either<NetworkError, List<CurrentCondition>>> getCurrentCondition(
      {required String locationKey, required String apiKey}) async {
    if (await _networkInfo.isConnected()) {
      try {
        final result = await _remoteDataSource.getCurrentCondition(
            apiKey: apiKey, locationKey: locationKey);
        return right(result.data.map((e) => e.toDomain()).toList());
      } on DioError catch (exception) {
        if (exception.type == DioErrorType.response) {
          final int statusCode = exception.response!.statusCode ?? 503;
          if (statusCode == 503) {
            return left(NetworkError.httpInternalServerError(
                exception.response!.statusMessage ?? ''));
          } else {
            return left(NetworkError.httpUnknownError(
                exception.response!.statusMessage ?? ''));
          }
        }
        return left(HttpUnknownError(exception.message));
      }
    } else {
      return left(const NetworkError.noInternetError());
    }
  }
}
