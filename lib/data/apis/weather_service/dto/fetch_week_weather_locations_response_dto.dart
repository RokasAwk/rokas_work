import 'package:freezed_annotation/freezed_annotation.dart';

import 'fetch_week_weather_location_response_dto.dart';

part 'fetch_week_weather_locations_response_dto.freezed.dart';
part 'fetch_week_weather_locations_response_dto.g.dart';

@freezed
class FetchWeekWeatherLocationsResponseDto
    with _$FetchWeekWeatherLocationsResponseDto {
  factory FetchWeekWeatherLocationsResponseDto({
    String? datasetDescription,
    List<FetchWeekWeatherLocationResponseDto>? location,
  }) = _FetchWeekWeatherLocationsResponseDto;

  factory FetchWeekWeatherLocationsResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$FetchWeekWeatherLocationsResponseDtoFromJson(json);
}
