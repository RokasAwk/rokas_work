import 'package:freezed_annotation/freezed_annotation.dart';

import 'fetch_36_hours_weather_parameter_response_dto.dart';
import 'fetch_week_weather_element_value_response_dto.dart';

part 'fetch_36_hours_weather_time_response_dto.freezed.dart';
part 'fetch_36_hours_weather_time_response_dto.g.dart';

@freezed
class Fetch36HoursWeatherTimeResponseDto
    with _$Fetch36HoursWeatherTimeResponseDto {
  factory Fetch36HoursWeatherTimeResponseDto({
    String? startTime,
    String? endTime,
    Fetch36HoursWeatherParameterResponseDto? parameter,
  }) = _Fetch36HoursWeatherTimeResponseDto;

  factory Fetch36HoursWeatherTimeResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$Fetch36HoursWeatherTimeResponseDtoFromJson(json);
}
