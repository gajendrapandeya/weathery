// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weathery/features/home/domain/entities/current_condition/wind_direction.dart';

part 'wind_direction_dto.freezed.dart';
part 'wind_direction_dto.g.dart';

@freezed
class WindDirectionDTO with _$WindDirectionDTO {
  const WindDirectionDTO._();

  const factory WindDirectionDTO({
    @JsonKey(name: 'Degrees') required double degrees,
    @JsonKey(name: 'Localized') required String localized,
    @JsonKey(name: 'English') required String english,
  }) = _WindDirectionDTO;

  factory WindDirectionDTO.fromJson(Map<String, dynamic> json) =>
      _$WindDirectionDTOFromJson(json);

  factory WindDirectionDTO.fromDomain(WindDirection windDirection) {
    return WindDirectionDTO(
      degrees: windDirection.degrees,
      localized: windDirection.localized,
      english: windDirection.english,
    );
  }

  WindDirection toDomain() {
    return WindDirection(
      degrees: degrees,
      localized: localized,
      english: english,
    );
  }
}
