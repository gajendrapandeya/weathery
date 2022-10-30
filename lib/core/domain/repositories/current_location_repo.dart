import 'package:dartz/dartz.dart';
import 'package:weathery/core/domain/entities/current_location.dart';
import 'package:weathery/core/network/network_error.dart';

abstract class CurrentLocationRepo {
  Future<Either<NetworkError, CurrentLocation>> getCurrentLocation({
    required String apiKey,
    required String latLong,
  });
}
