import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weathery/features/home/domain/entities/current_condition/temperature_unit.dart';

part 'wind_speed.freezed.dart';

@freezed
class WindSpeed with _$WindSpeed {
  const WindSpeed._();

  const factory WindSpeed({
    required TemperatureUnit metric,
    required TemperatureUnit imperial,
  }) = _WindSpeed;
}
