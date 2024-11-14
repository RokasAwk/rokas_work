import 'package:freezed_annotation/freezed_annotation.dart';

import 'fetch_week_weather_records_response_dto.dart';

part 'fetch_week_weather_response_dto.freezed.dart';
part 'fetch_week_weather_response_dto.g.dart';

@freezed
class FetchWeekWeatherResponseDto with _$FetchWeekWeatherResponseDto {
  factory FetchWeekWeatherResponseDto({
    FetchWeekWeatherRecordsResponseDto? records,
  }) = _FetchWeekWeatherResponseDto;

  factory FetchWeekWeatherResponseDto.fromJson(Map<String, dynamic> json) =>
      _$FetchWeekWeatherResponseDtoFromJson(json);
}
