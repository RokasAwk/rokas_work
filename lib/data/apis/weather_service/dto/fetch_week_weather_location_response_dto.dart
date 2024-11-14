import 'package:freezed_annotation/freezed_annotation.dart';

import 'fetch_week_weather_weather_element_response_dto.dart';

part 'fetch_week_weather_location_response_dto.freezed.dart';
part 'fetch_week_weather_location_response_dto.g.dart';

@freezed
class FetchWeekWeatherLocationResponseDto
    with _$FetchWeekWeatherLocationResponseDto {
  factory FetchWeekWeatherLocationResponseDto({
    String? locationName,
    List<FetchWeekWeatherWeatherElementResponseDto>? weatherElement,
  }) = _FetchWeekWeatherLocationResponseDto;

  factory FetchWeekWeatherLocationResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$FetchWeekWeatherLocationResponseDtoFromJson(json);
}
