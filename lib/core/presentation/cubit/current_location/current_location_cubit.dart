import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weathery/core/domain/entities/current_location.dart';
import 'package:weathery/core/domain/usecases/current_location_usecase.dart';

part 'current_location_state.dart';
part 'current_location_cubit.freezed.dart';

@injectable
class CurrentLocationCubit extends Cubit<CurrentLocationState> {
  CurrentLocationCubit(this._usecase)
      : super(
          const CurrentLocationState.initial(),
        );

  final CurrentLocationUsecase _usecase;

  Future<void> requestCurrentLocation({
    required String apiKey,
    required String latLong,
  }) async {
    emit(const CurrentLocationState.loading());
    final result = await _usecase.requestCurrentLocation(
      apiKey: apiKey,
      latLong: latLong,
    );
    result.fold(
      (error) => emit(
        CurrentLocationState.error(error.message),
      ),
      (location) => emit(
        CurrentLocationState.loaded(location),
      ),
    );
  }
}
