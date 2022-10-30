import 'package:freezed_annotation/freezed_annotation.dart';

part 'wind_direction.freezed.dart';

@freezed
class WindDirection with _$WindDirection {
  const WindDirection._();

  const factory WindDirection({
    required double degrees,
    required String localized,
    required String english,
  }) = _WindDirection;
}
