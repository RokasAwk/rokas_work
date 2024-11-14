import 'package:freezed_annotation/freezed_annotation.dart';

import 'fetch_week_weather_locations_response_dto.dart';

part 'fetch_week_weather_records_response_dto.freezed.dart';
part 'fetch_week_weather_records_response_dto.g.dart';

@freezed
class FetchWeekWeatherRecordsResponseDto
    with _$FetchWeekWeatherRecordsResponseDto {
  factory FetchWeekWeatherRecordsResponseDto({
    List<FetchWeekWeatherLocationsResponseDto>? locations,
  }) = _FetchWeekWeatherRecordsResponseDto;

  factory FetchWeekWeatherRecordsResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$FetchWeekWeatherRecordsResponseDtoFromJson(json);
}
