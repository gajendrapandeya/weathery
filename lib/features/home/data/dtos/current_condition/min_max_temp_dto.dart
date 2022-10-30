// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weathery/features/home/data/dtos/current_condition/temperature_unit_dto.dart';
import 'package:weathery/features/home/domain/entities/current_condition/min_max_temp.dart';

part 'min_max_temp_dto.freezed.dart';
part 'min_max_temp_dto.g.dart';

@freezed
class MinMaxTempDto with _$MinMaxTempDto {
  const MinMaxTempDto._();

  const factory MinMaxTempDto({
    @JsonKey(name: 'Metric') required TemperatureUnitDTO metric,
    @JsonKey(name: 'Imperial') required TemperatureUnitDTO imperial,
  }) = _MinMaxTempDto;

  factory MinMaxTempDto.fromJson(Map<String, dynamic> json) =>
      _$MinMaxTempDtoFromJson(json);

  factory MinMaxTempDto.fromDomain(MinMaxTemp minMaxTemp) => MinMaxTempDto(
        metric: TemperatureUnitDTO.fromDomain(minMaxTemp.metric),
        imperial: TemperatureUnitDTO.fromDomain(minMaxTemp.imperial),
      );

  MinMaxTemp toDomain() => MinMaxTemp(
        metric: metric.toDomain(),
        imperial: imperial.toDomain(),
      );
}
