// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weathery/features/home/data/dtos/current_condition/min_max_temp_dto.dart';
import 'package:weathery/features/home/domain/entities/current_condition/temperature_min_max.dart';

part 'temperature_min_max_dto.freezed.dart';
part 'temperature_min_max_dto.g.dart';

@freezed
class TemperatureMinMaxDTO with _$TemperatureMinMaxDTO {
  const TemperatureMinMaxDTO._();

  const factory TemperatureMinMaxDTO({
    @JsonKey(name: 'Minimum') required MinMaxTempDto minimum,
    @JsonKey(name: 'Maximum') required MinMaxTempDto maximum,
  }) = _TemperatureMinMaxDTO;

  factory TemperatureMinMaxDTO.fromJson(Map<String, dynamic> json) =>
      _$TemperatureMinMaxDTOFromJson(json);

  factory TemperatureMinMaxDTO.fromDomain(
          TemperatureMinMax temperatureMinMax) =>
      TemperatureMinMaxDTO(
        minimum: MinMaxTempDto.fromDomain(temperatureMinMax.minimum),
        maximum: MinMaxTempDto.fromDomain(temperatureMinMax.maximum),
      );

  TemperatureMinMax toDomain() => TemperatureMinMax(
        minimum: minimum.toDomain(),
        maximum: maximum.toDomain(),
      );
}
