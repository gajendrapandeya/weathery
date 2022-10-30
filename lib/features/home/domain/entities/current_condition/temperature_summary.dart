import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weathery/features/home/domain/entities/current_condition/past_x_hour_range.dart';

part 'temperature_summary.freezed.dart';

@freezed
class TemperatureSummary with _$TemperatureSummary {
  const TemperatureSummary._();

  const factory TemperatureSummary({
    required PastXHourRange past6HourRange,
    required PastXHourRange past12HourRange,
    required PastXHourRange past24HourRange,
  }) = _TemperatureSummary;
}
