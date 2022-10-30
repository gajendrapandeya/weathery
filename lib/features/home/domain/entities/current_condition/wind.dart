import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weathery/features/home/domain/entities/current_condition/wind_direction.dart';
import 'package:weathery/features/home/domain/entities/current_condition/wind_speed.dart';

part 'wind.freezed.dart';

@freezed
class Wind with _$Wind {
  const Wind._();

  const factory Wind({
    required WindDirection windDirection,
    required WindSpeed windSpeed,
  }) = _Wind;
}
