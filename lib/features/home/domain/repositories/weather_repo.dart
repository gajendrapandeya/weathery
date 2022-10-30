import 'package:dartz/dartz.dart';
import 'package:weathery/core/network/network_error.dart';
import 'package:weathery/features/home/domain/entities/current_condition/current_condition.dart';

abstract class WeatherRepo {
  Future<Either<NetworkError, List<CurrentCondition>>> getCurrentCondition({
    required String locationKey,
    required String apiKey,
  });
}
