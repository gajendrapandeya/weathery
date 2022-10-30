import 'package:freezed_annotation/freezed_annotation.dart';

part 'temperature_unit.freezed.dart';

@freezed
class TemperatureUnit with _$TemperatureUnit {
  const TemperatureUnit._();

  const factory TemperatureUnit({
    required double value,
    required String unit,
    required int unitType,
  }) = _TemperatureUnit;
}
