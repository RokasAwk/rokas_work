import 'package:freezed_annotation/freezed_annotation.dart';

import 'fetch_36_hours_weather_weather_element_response_dto.dart';

part 'fetch_36_hours_weather_location_response_dto.freezed.dart';
part 'fetch_36_hours_weather_location_response_dto.g.dart';

@freezed
class Fetch36HoursWeatherLocationResponseDto
    with _$Fetch36HoursWeatherLocationResponseDto {
  factory Fetch36HoursWeatherLocationResponseDto({
    String? locationName,
    List<Fetch36HoursWeatherWeatherElementResponseDto>? weatherElement,
  }) = _Fetch36HoursWeatherLocationResponseDto;

  factory Fetch36HoursWeatherLocationResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$Fetch36HoursWeatherLocationResponseDtoFromJson(json);
}
