// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weathery/features/home/data/dtos/current_condition/temperature_unit_dto.dart';
import 'package:weathery/features/home/domain/entities/current_condition/wind_speed.dart';

part 'wind_speed_dto.freezed.dart';
part 'wind_speed_dto.g.dart';

@freezed
class WindSpeedDto with _$WindSpeedDto {
  const WindSpeedDto._();

  const factory WindSpeedDto({
    @JsonKey(name: 'Metric') required TemperatureUnitDTO metric,
    @JsonKey(name: 'Imperial') required TemperatureUnitDTO imperial,
  }) = _WindSpeedDto;

  factory WindSpeedDto.fromJson(Map<String, dynamic> json) =>
      _$WindSpeedDtoFromJson(json);

  factory WindSpeedDto.fromDomain(WindSpeed windSpeed) {
    return WindSpeedDto(
      metric: TemperatureUnitDTO.fromDomain(windSpeed.metric),
      imperial: TemperatureUnitDTO.fromDomain(windSpeed.imperial),
    );
  }

  WindSpeed toDomain() {
    return WindSpeed(
      metric: metric.toDomain(),
      imperial: imperial.toDomain(),
    );
  }
}
