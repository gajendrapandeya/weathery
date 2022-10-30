import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weathery/core/constants/api_constants.dart';
import 'package:weathery/core/data/dtos/current_location_dto.dart';

part 'current_location_service.g.dart';

@RestApi()
@injectable
abstract class CurrentLocationService {
  @factoryMethod
  factory CurrentLocationService(Dio dio) = _CurrentLocationService;

  @GET(ApiConstants.locationKey)
  Future<HttpResponse<CurrentLocationDto>> getCurrentLocation({
    @Query('apikey') required String apiKey,
    @Query('q') required String latLong,
  });
}
