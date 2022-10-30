// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weathery/features/home/domain/entities/current_condition/temperature_unit.dart';

part 'temperature_unit_dto.freezed.dart';
part 'temperature_unit_dto.g.dart';

@freezed
class TemperatureUnitDTO with _$TemperatureUnitDTO {
  const TemperatureUnitDTO._();

  const factory TemperatureUnitDTO({
    @JsonKey(name: 'Value') required double value,
    @JsonKey(name: 'Unit') required String unit,
    @JsonKey(name: 'UnitType') required int unitType,
  }) = _TemperatureUnitDTO;

  factory TemperatureUnitDTO.fromJson(Map<String, dynamic> json) =>
      _$TemperatureUnitDTOFromJson(json);

  factory TemperatureUnitDTO.fromDomain(TemperatureUnit temperatureUnit) {
    return TemperatureUnitDTO(
      value: temperatureUnit.value,
      unit: temperatureUnit.unit,
      unitType: temperatureUnit.unitType,
    );
  }

  TemperatureUnit toDomain() {
    return TemperatureUnit(
      value: value,
      unit: unit,
      unitType: unitType,
    );
  }
}
