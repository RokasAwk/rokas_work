import 'package:freezed_annotation/freezed_annotation.dart';

import 'fetch_week_weather_element_value_response_dto.dart';

part 'fetch_week_weather_time_response_dto.freezed.dart';
part 'fetch_week_weather_time_response_dto.g.dart';

@freezed
class FetchWeekWeatherTimeResponseDto with _$FetchWeekWeatherTimeResponseDto {
  factory FetchWeekWeatherTimeResponseDto({
    String? StartTime,
    String? EndTime,
    List<FetchWeekWeatherelEmentValueResponseDto>? ElementValue,
  }) = _FetchWeekWeatherTimeResponseDto;

  factory FetchWeekWeatherTimeResponseDto.fromJson(Map<String, dynamic> json) =>
      _$FetchWeekWeatherTimeResponseDtoFromJson(json);
}
