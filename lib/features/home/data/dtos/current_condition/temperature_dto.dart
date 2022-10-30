// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weathery/features/home/data/dtos/current_condition/temperature_unit_dto.dart';
import 'package:weathery/features/home/domain/entities/current_condition/temperature.dart';

part 'temperature_dto.freezed.dart';
part 'temperature_dto.g.dart';

@freezed
class TemperatureDTO with _$TemperatureDTO {
  const TemperatureDTO._();

  const factory TemperatureDTO({
    @JsonKey(name: 'Metric') required TemperatureUnitDTO metric,
    @JsonKey(name: 'Imperial') required TemperatureUnitDTO imperial,
  }) = _TemperatureDTO;

  factory TemperatureDTO.fromJson(Map<String, dynamic> json) =>
      _$TemperatureDTOFromJson(json);

  factory TemperatureDTO.fromDomain(Temperature temperature) {
    return TemperatureDTO(
      metric: TemperatureUnitDTO.fromDomain(temperature.metric),
      imperial: TemperatureUnitDTO.fromDomain(temperature.imperial),
    );
  }

  Temperature toDomain() {
    return Temperature(
      metric: metric.toDomain(),
      imperial: imperial.toDomain(),
    );
  }
}
