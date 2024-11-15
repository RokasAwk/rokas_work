import 'package:freezed_annotation/freezed_annotation.dart';

import 'fetch_36_hours_weather_time_response_dto.dart';

part 'fetch_36_hours_weather_weather_element_response_dto.freezed.dart';
part 'fetch_36_hours_weather_weather_element_response_dto.g.dart';

@freezed
class Fetch36HoursWeatherWeatherElementResponseDto
    with _$Fetch36HoursWeatherWeatherElementResponseDto {
  factory Fetch36HoursWeatherWeatherElementResponseDto({
    String? elementName,
    List<Fetch36HoursWeatherTimeResponseDto>? time,
  }) = _Fetch36HoursWeatherWeatherElementResponseDto;

  factory Fetch36HoursWeatherWeatherElementResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$Fetch36HoursWeatherWeatherElementResponseDtoFromJson(json);
}
