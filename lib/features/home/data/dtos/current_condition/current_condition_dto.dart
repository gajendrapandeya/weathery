// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weathery/features/home/data/dtos/current_condition/temperature_dto.dart';
import 'package:weathery/features/home/data/dtos/current_condition/temperature_summary_dto.dart';
import 'package:weathery/features/home/data/dtos/current_condition/wind_dto.dart';
import 'package:weathery/features/home/domain/entities/current_condition/current_condition.dart';

part 'current_condition_dto.freezed.dart';
part 'current_condition_dto.g.dart';

@freezed
class CurrentConditionDTO with _$CurrentConditionDTO {
  const CurrentConditionDTO._();

  const factory CurrentConditionDTO({
    @JsonKey(name: 'Temperature') required TemperatureDTO temperature,
    @JsonKey(name: 'WeatherText') required String weatherText,
    @JsonKey(name: 'WeatherIcon') required int weatherIconNumber,
    @JsonKey(name: 'RelativeHumidity') required int humidity,
    @JsonKey(name: 'Wind') required WindDTO wind,
    @JsonKey(name: 'TemperatureSummary')
        required TemperatureSummaryDTO temperatureSummary,
    @JsonKey(name: 'UVIndexText') required String uvIndexText,
  }) = _CurrentConditionDTO;

  factory CurrentConditionDTO.fromJson(Map<String, dynamic> json) =>
      _$CurrentConditionDTOFromJson(json);

  factory CurrentConditionDTO.fromDomain(CurrentCondition currentCondition) {
    return CurrentConditionDTO(
      temperature: TemperatureDTO.fromDomain(currentCondition.temperature),
      weatherText: currentCondition.weatherText,
      weatherIconNumber: currentCondition.weatherIconNumber,
      humidity: currentCondition.humidity,
      wind: WindDTO.fromDomain(currentCondition.wind),
      temperatureSummary:
          TemperatureSummaryDTO.fromDomain(currentCondition.summary),
      uvIndexText: currentCondition.uvIndexText,
    );
  }

  CurrentCondition toDomain() {
    return CurrentCondition(
      temperature: temperature.toDomain(),
      weatherText: weatherText,
      weatherIconNumber: weatherIconNumber,
      humidity: humidity,
      wind: wind.toDomain(),
      summary: temperatureSummary.toDomain(),
      uvIndexText: uvIndexText,
    );
  }
}
