import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:weathery/core/data/data_sources/source/remote/current_location_remote_data_source.dart';
import 'package:weathery/core/domain/entities/current_location.dart';
import 'package:dartz/dartz.dart';
import 'package:weathery/core/domain/repositories/current_location_repo.dart';
import 'package:weathery/core/network/network_error.dart';
import 'package:weathery/core/network/network_info.dart';
import 'package:weathery/core/utils/app_utils.dart';

@Injectable(as: CurrentLocationRepo)
class CurrentLocationRepoImpl implements CurrentLocationRepo {
  final CurrentLocationRemoteDataSource _remoteDataSource;
  final NetworkInfo _networkInfo;

  CurrentLocationRepoImpl(
    this._remoteDataSource,
    this._networkInfo,
  );

  @override
  Future<Either<NetworkError, CurrentLocation>> getCurrentLocation(
      {required String apiKey, required String latLong}) async {
    if ((await AppUtils.getLocationKey()).isNotEmpty) {
      return Right(CurrentLocation(
        locationKey: await AppUtils.getLocationKey(),
        locationName: await AppUtils.getLocationName(),
        country: await AppUtils.getCountry(),
      ));
    }
    if (await _networkInfo.isConnected()) {
      try {
        final result = await _remoteDataSource.getCurrentLocation(
            apiKey: apiKey, latLong: latLong);
        AppUtils.setLocationKey(result.data.locationKey);
        AppUtils.setLocationName(result.data.locationName);
        return right(result.data.toDomain());
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
