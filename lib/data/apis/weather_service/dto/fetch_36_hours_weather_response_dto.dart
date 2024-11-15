import 'package:freezed_annotation/freezed_annotation.dart';

import 'fetch_36_hours_weather_records_response_dto.dart';

part 'fetch_36_hours_weather_response_dto.freezed.dart';
part 'fetch_36_hours_weather_response_dto.g.dart';

@freezed
class Fetch36HoursWeatherResponseDto with _$Fetch36HoursWeatherResponseDto {
  factory Fetch36HoursWeatherResponseDto({
    Fetch36HoursWeatherRecordsResponseDto? records,
  }) = _Fetch36HoursWeatherResponseDto;

  factory Fetch36HoursWeatherResponseDto.fromJson(Map<String, dynamic> json) =>
      _$Fetch36HoursWeatherResponseDtoFromJson(json);
}
