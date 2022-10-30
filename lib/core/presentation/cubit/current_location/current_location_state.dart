part of 'current_location_cubit.dart';

@freezed
class CurrentLocationState with _$CurrentLocationState {
  const factory CurrentLocationState.initial() = _Initial;
  const factory CurrentLocationState.loading() = _Loading;
  const factory CurrentLocationState.loaded(CurrentLocation location) = _Loaded;
  const factory CurrentLocationState.error(String message) = _Error;
}
