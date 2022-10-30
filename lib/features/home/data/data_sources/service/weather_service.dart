import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weathery/core/constants/api_constants.dart';
import 'package:weathery/features/home/data/dtos/current_condition/current_condition_dto.dart';

part 'weather_service.g.dart';

@RestApi()
@injectable
abstract class WeatherService {
  @factoryMethod
  factory WeatherService(Dio dio) = _WeatherService;

  @GET(ApiConstants.currentConditions)
  Future<HttpResponse<List<CurrentConditionDTO>>> getCurrentCondition({
    @Path('locationKey') required String locationKey,
    @Query('apikey') required String apiKey,
    @Query('details') bool details = true,
  });
}
