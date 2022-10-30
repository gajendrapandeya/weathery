// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weathery/core/data/dtos/country_dto.dart';
import 'package:weathery/core/domain/entities/current_location.dart';

part 'current_location_dto.freezed.dart';
part 'current_location_dto.g.dart';

@freezed
class CurrentLocationDto with _$CurrentLocationDto {
  const CurrentLocationDto._();

  const factory CurrentLocationDto({
    @JsonKey(name: 'Key') required String locationKey,
    @JsonKey(name: 'EnglishName') required String locationName,
    @JsonKey(name: 'Country') required CountryDto country,
  }) = _CurrentLocationDto;

  factory CurrentLocationDto.fromJson(Map<String, dynamic> json) =>
      _$CurrentLocationDtoFromJson(json);

  factory CurrentLocationDto.fromDomain(CurrentLocation currentLocation) {
    return CurrentLocationDto(
      locationKey: currentLocation.locationKey,
      locationName: currentLocation.locationName,
      country: CountryDto.fromDomain(currentLocation.country),
    );
  }

  CurrentLocation toDomain() {
    return CurrentLocation(
      locationKey: locationKey,
      locationName: locationName,
      country: country.toDomain(),
    );
  }
}
