import 'package:injectable/injectable.dart';
import 'package:weathery/core/domain/entities/current_location.dart';
import 'package:dartz/dartz.dart';
import 'package:weathery/core/domain/repositories/current_location_repo.dart';
import 'package:weathery/core/domain/usecases/current_location_usecase.dart';
import 'package:weathery/core/network/network_error.dart';

@Injectable(as: CurrentLocationUsecase)
class CurrentLocationUsecaseImpl extends CurrentLocationUsecase {
  final CurrentLocationRepo _locationRepository;

  CurrentLocationUsecaseImpl(this._locationRepository);

  @override
  Future<Either<NetworkError, CurrentLocation>> requestCurrentLocation(
      {required String apiKey, required String latLong}) {
    return _locationRepository.getCurrentLocation(
        apiKey: apiKey, latLong: latLong);
  }
}
