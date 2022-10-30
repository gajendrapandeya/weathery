// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weathery/core/domain/entities/country.dart';

part 'country_dto.freezed.dart';
part 'country_dto.g.dart';

@freezed
class CountryDto with _$CountryDto {
  const CountryDto._();

  const factory CountryDto({
    @JsonKey(name: 'ID') required String id,
    @JsonKey(name: 'EnglishName') required String name,
  }) = _CountryDto;

  factory CountryDto.fromJson(Map<String, dynamic> json) =>
      _$CountryDtoFromJson(json);

  factory CountryDto.fromDomain(Country country) {
    return CountryDto(
      id: country.id,
      name: country.name,
    );
  }

  Country toDomain() {
    return Country(
      id: id,
      name: name,
    );
  }
}
