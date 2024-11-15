import 'package:freezed_annotation/freezed_annotation.dart';

import 'fetch_36_hours_weather_location_response_dto.dart';

part 'fetch_36_hours_weather_records_response_dto.freezed.dart';
part 'fetch_36_hours_weather_records_response_dto.g.dart';

@freezed
class Fetch36HoursWeatherRecordsResponseDto
    with _$Fetch36HoursWeatherRecordsResponseDto {
  factory Fetch36HoursWeatherRecordsResponseDto({
    List<Fetch36HoursWeatherLocationResponseDto>? location,
  }) = _Fetch36HoursWeatherRecordsResponseDto;

  factory Fetch36HoursWeatherRecordsResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$Fetch36HoursWeatherRecordsResponseDtoFromJson(json);
}
