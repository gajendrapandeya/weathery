import 'package:injectable/injectable.dart';
import 'package:retrofit/dio.dart';
import 'package:weathery/features/home/data/data_sources/service/weather_service.dart';
import 'package:weathery/features/home/data/data_sources/source/remote/weather_remote_data_source.dart';
import 'package:weathery/features/home/data/dtos/current_condition/current_condition_dto.dart';

@Injectable(as: WeatherRemoteDataSource)
class WeatherRemoteDataSourceImpl extends WeatherRemoteDataSource {
  final WeatherService _weatherService;

  WeatherRemoteDataSourceImpl(this._weatherService);

  @override
  Future<HttpResponse<List<CurrentConditionDTO>>> getCurrentCondition(
          {required String locationKey, required String apiKey}) =>
      _weatherService.getCurrentCondition(
          locationKey: locationKey, apiKey: apiKey);
}
