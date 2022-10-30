import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weathery/features/home/domain/entities/current_condition/temperature_unit.dart';

part 'temperature.freezed.dart';

@freezed
class Temperature with _$Temperature {
  const Temperature._();

  const factory Temperature({
    required TemperatureUnit metric,
    required TemperatureUnit imperial,
  }) = _Temperature;
}
