import 'package:dartz/dartz.dart';
import 'package:weathery/core/network/network_error.dart';
import 'package:weathery/features/home/domain/entities/current_condition/current_condition.dart';

abstract class WeatherUsecase {
  Future<Either<NetworkError, List<CurrentCondition>>> requestCurrentCondition({
    required String apiKey,
    required String locationKey,
  });
}
