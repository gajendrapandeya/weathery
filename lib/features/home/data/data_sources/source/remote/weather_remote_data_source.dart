import 'package:retrofit/dio.dart';
import 'package:weathery/features/home/data/dtos/current_condition/current_condition_dto.dart';

abstract class WeatherRemoteDataSource {
  Future<HttpResponse<List<CurrentConditionDTO>>> getCurrentCondition({
    required String locationKey,
    required String apiKey,
  });
}
