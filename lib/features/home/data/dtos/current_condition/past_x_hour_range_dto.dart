// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weathery/features/home/data/dtos/current_condition/temperature_min_max_dto.dart';
import 'package:weathery/features/home/domain/entities/current_condition/past_x_hour_range.dart';

part 'past_x_hour_range_dto.freezed.dart';
part 'past_x_hour_range_dto.g.dart';

@freezed
class PastXHourRangeDTO with _$PastXHourRangeDTO {
  const PastXHourRangeDTO._();

  const factory PastXHourRangeDTO({
    required TemperatureMinMaxDTO temperatureMinMax,
  }) = _PastXHourRangeDTO;

  factory PastXHourRangeDTO.fromJson(Map<String, dynamic> json) =>
      _$PastXHourRangeDTOFromJson(json);

  factory PastXHourRangeDTO.fromDomain(PastXHourRange pastXHourRange) =>
      PastXHourRangeDTO(
        temperatureMinMax:
            TemperatureMinMaxDTO.fromDomain(pastXHourRange.temperatureMinMax),
      );

  PastXHourRange toDomain() {
    return PastXHourRange(
      temperatureMinMax: temperatureMinMax.toDomain(),
    );
  }
}
