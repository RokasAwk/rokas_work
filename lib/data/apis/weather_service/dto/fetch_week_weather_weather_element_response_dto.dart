import 'package:freezed_annotation/freezed_annotation.dart';

import 'fetch_week_weather_time_response_dto.dart';

part 'fetch_week_weather_weather_element_response_dto.freezed.dart';
part 'fetch_week_weather_weather_element_response_dto.g.dart';

@freezed
class FetchWeekWeatherWeatherElementResponseDto
    with _$FetchWeekWeatherWeatherElementResponseDto {
  factory FetchWeekWeatherWeatherElementResponseDto({
    List<FetchWeekWeatherTimeResponseDto>? time,
  }) = _FetchWeekWeatherWeatherElementResponseDto;

  factory FetchWeekWeatherWeatherElementResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$FetchWeekWeatherWeatherElementResponseDtoFromJson(json);
}
