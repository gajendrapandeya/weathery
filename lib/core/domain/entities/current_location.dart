import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weathery/core/domain/entities/country.dart';

part 'current_location.freezed.dart';

@freezed
class CurrentLocation with _$CurrentLocation {
  const CurrentLocation._();

  const factory CurrentLocation({
    required String locationKey,
    required String locationName,
    required Country country,
  }) = _CurrentLocation;
}
