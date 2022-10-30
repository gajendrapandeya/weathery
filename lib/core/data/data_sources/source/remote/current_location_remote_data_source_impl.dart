import 'package:injectable/injectable.dart';
import 'package:retrofit/dio.dart';
import 'package:weathery/core/data/data_sources/service/current_location_service.dart';
import 'package:weathery/core/data/data_sources/source/remote/current_location_remote_data_source.dart';
import 'package:weathery/core/data/dtos/current_location_dto.dart';

@Injectable(as: CurrentLocationRemoteDataSource)
class CurrentLocationRemoteDataSourceImpl
    extends CurrentLocationRemoteDataSource {
  final CurrentLocationService _currentLocationService;

  CurrentLocationRemoteDataSourceImpl(this._currentLocationService);

  @override
  Future<HttpResponse<CurrentLocationDto>> getCurrentLocation(
          {required String apiKey, required String latLong}) =>
      _currentLocationService.getCurrentLocation(
          apiKey: apiKey, latLong: latLong);
}
