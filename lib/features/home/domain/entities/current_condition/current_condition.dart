import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weathery/features/home/domain/entities/current_condition/temperature.dart';
import 'package:weathery/features/home/domain/entities/current_condition/temperature_summary.dart';
import 'package:weathery/features/home/domain/entities/current_condition/wind.dart';

part 'current_condition.freezed.dart';

@freezed
class CurrentCondition with _$CurrentCondition {
  const CurrentCondition._();

  const factory CurrentCondition(
      {required Temperature temperature,
      required String weatherText,
      required int weatherIconNumber,
      required int humidity,
      required Wind wind,
      required TemperatureSummary summary,
      required String uvIndexText}) = _CurrentCondition;

  int get currentTemperatureMetric => temperature.metric.value.toInt();
  int get currentTemperatureImperial => temperature.imperial.value.toInt();
  int get currentWindSpeedMetric => wind.windSpeed.metric.value.toInt();
  int get currentWindSpeedImperial => wind.windSpeed.imperial.value.toInt();
  int get minTemperatureMetric =>
      summary.past24HourRange.temperatureMinMax.minimum.metric.value.toInt();
  int get minTemperatureImperial =>
      summary.past24HourRange.temperatureMinMax.minimum.imperial.value.toInt();
  int get maxTemperatureMetric =>
      summary.past24HourRange.temperatureMinMax.maximum.metric.value.toInt();
  int get maxTemperatureImperial =>
      summary.past24HourRange.temperatureMinMax.maximum.imperial.value.toInt();
}
