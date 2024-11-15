import 'package:freezed_annotation/freezed_annotation.dart';

import 'fetch_week_weather_element_value_response_dto.dart';

part 'fetch_36_hours_weather_parameter_response_dto.freezed.dart';
part 'fetch_36_hours_weather_parameter_response_dto.g.dart';

@freezed
class Fetch36HoursWeatherParameterResponseDto
    with _$Fetch36HoursWeatherParameterResponseDto {
  factory Fetch36HoursWeatherParameterResponseDto({
    String? parameterName,
  }) = _Fetch36HoursWeatherParameterResponseDto;

  factory Fetch36HoursWeatherParameterResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$Fetch36HoursWeatherParameterResponseDtoFromJson(json);
}
