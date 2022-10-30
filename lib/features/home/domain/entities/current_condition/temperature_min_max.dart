import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weathery/features/home/domain/entities/current_condition/min_max_temp.dart';

part 'temperature_min_max.freezed.dart';

@freezed
class TemperatureMinMax with _$TemperatureMinMax {
  const TemperatureMinMax._();

  const factory TemperatureMinMax({
    required MinMaxTemp minimum,
    required MinMaxTemp maximum,
  }) = _TemperatureMinMax;
}
