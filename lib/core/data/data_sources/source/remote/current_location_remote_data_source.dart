import 'package:retrofit/dio.dart';
import 'package:weathery/core/data/dtos/current_location_dto.dart';

abstract class CurrentLocationRemoteDataSource {
  Future<HttpResponse<CurrentLocationDto>> getCurrentLocation({
    required String apiKey,
    required String latLong,
  });
}
