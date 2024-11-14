import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetch_week_weather_request_dto.freezed.dart';
part 'fetch_week_weather_request_dto.g.dart';

@freezed
class FetchWeekWeatherRequestDto with _$FetchWeekWeatherRequestDto {
  factory FetchWeekWeatherRequestDto({
    String? elementName,
    required String Authorization,
  }) = _FetchWeekWeatherRequestDto;

  factory FetchWeekWeatherRequestDto.fromJson(Map<String, dynamic> json) =>
      _$FetchWeekWeatherRequestDtoFromJson(json);
}
