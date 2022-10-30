import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weathery/features/home/domain/entities/current_condition/temperature_unit.dart';

part 'min_max_temp.freezed.dart';

@freezed
class MinMaxTemp with _$MinMaxTemp {
  const MinMaxTemp._();

  const factory MinMaxTemp({
    required TemperatureUnit metric,
    required TemperatureUnit imperial,
  }) = _MinMaxTemp;
}
