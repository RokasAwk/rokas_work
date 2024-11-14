import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetch_week_weather_element_value_response_dto.freezed.dart';
part 'fetch_week_weather_element_value_response_dto.g.dart';

@freezed
class FetchWeekWeatherelEmentValueResponseDto
    with _$FetchWeekWeatherelEmentValueResponseDto {
  factory FetchWeekWeatherelEmentValueResponseDto({
    String? value,
  }) = _FetchWeekWeatherelEmentValueResponseDto;

  factory FetchWeekWeatherelEmentValueResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$FetchWeekWeatherelEmentValueResponseDtoFromJson(json);
}
