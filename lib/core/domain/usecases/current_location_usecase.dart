import 'package:dartz/dartz.dart';
import 'package:weathery/core/domain/entities/current_location.dart';
import 'package:weathery/core/network/network_error.dart';

abstract class CurrentLocationUsecase {
  Future<Either<NetworkError, CurrentLocation>> requestCurrentLocation({
    required String apiKey,
    required String latLong,
  });
}
