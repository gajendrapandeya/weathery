// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weathery/features/home/data/dtos/current_condition/wind_direction_dto.dart';
import 'package:weathery/features/home/data/dtos/current_condition/wind_speed_dto.dart';
import 'package:weathery/features/home/domain/entities/current_condition/wind.dart';

part 'wind_dto.freezed.dart';
part 'wind_dto.g.dart';

@freezed
class WindDTO with _$WindDTO {
  const WindDTO._();

  const factory WindDTO({
    @JsonKey(name: 'Direction') required WindDirectionDTO direction,
    @JsonKey(name: 'Speed') required WindSpeedDto speed,
  }) = _WindDTO;

  factory WindDTO.fromJson(Map<String, dynamic> json) =>
      _$WindDTOFromJson(json);

  factory WindDTO.fromDomain(Wind wind) {
    return WindDTO(
      direction: WindDirectionDTO.fromDomain(wind.windDirection),
      speed: WindSpeedDto.fromDomain(wind.windSpeed),
    );
  }

  Wind toDomain() {
    return Wind(
      windDirection: direction.toDomain(),
      windSpeed: speed.toDomain(),
    );
  }
}
