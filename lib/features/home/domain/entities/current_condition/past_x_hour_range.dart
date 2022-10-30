import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weathery/features/home/domain/entities/current_condition/temperature_min_max.dart';

part 'past_x_hour_range.freezed.dart';

@freezed
class PastXHourRange with _$PastXHourRange {
  const PastXHourRange._();

  const factory PastXHourRange({
    required TemperatureMinMax temperatureMinMax,
  }) = _PastXHourRange;
}
