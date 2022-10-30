// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weathery/features/home/data/dtos/current_condition/past_x_hour_range_dto.dart';
import 'package:weathery/features/home/domain/entities/current_condition/temperature_summary.dart';

part 'temperature_summary_dto.freezed.dart';
part 'temperature_summary_dto.g.dart';

@freezed
class TemperatureSummaryDTO with _$TemperatureSummaryDTO {
  const TemperatureSummaryDTO._();

  const factory TemperatureSummaryDTO({
    @JsonKey(name: 'Past6HourRange') required PastXHourRangeDTO past6HourRange,
    @JsonKey(name: 'Past12HourRange')
        required PastXHourRangeDTO past12HourRange,
    @JsonKey(name: 'Past24HourRange')
        required PastXHourRangeDTO past24HourRange,
  }) = _TemperatureSummaryDTO;

  factory TemperatureSummaryDTO.fromJson(Map<String, dynamic> json) =>
      _$TemperatureSummaryDTOFromJson(json);

  factory TemperatureSummaryDTO.fromDomain(
      TemperatureSummary temperatureSummary) {
    return TemperatureSummaryDTO(
      past6HourRange:
          PastXHourRangeDTO.fromDomain(temperatureSummary.past6HourRange),
      past12HourRange:
          PastXHourRangeDTO.fromDomain(temperatureSummary.past12HourRange),
      past24HourRange:
          PastXHourRangeDTO.fromDomain(temperatureSummary.past24HourRange),
    );
  }

  TemperatureSummary toDomain() {
    return TemperatureSummary(
      past6HourRange: past6HourRange.toDomain(),
      past12HourRange: past12HourRange.toDomain(),
      past24HourRange: past24HourRange.toDomain(),
    );
  }
}
