import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:weathery/core/network/network_error.dart';
import 'package:weathery/features/home/domain/entities/current_condition/current_condition.dart';
import 'package:weathery/features/home/domain/repositories/weather_repo.dart';
import 'package:weathery/features/home/domain/usecases/weather_usecase.dart';

@Injectable(as: WeatherUsecase)
class WeatherUsecaseImpl extends WeatherUsecase {
  final WeatherRepo _weatherRepo;

  WeatherUsecaseImpl(this._weatherRepo);

  @override
  Future<Either<NetworkError, List<CurrentCondition>>> requestCurrentCondition(
          {required String apiKey, required String locationKey}) =>
      _weatherRepo.getCurrentCondition(
          apiKey: apiKey, locationKey: locationKey);
}
