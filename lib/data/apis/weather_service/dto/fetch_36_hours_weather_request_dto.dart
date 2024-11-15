import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetch_36_hours_weather_request_dto.freezed.dart';
part 'fetch_36_hours_weather_request_dto.g.dart';

@freezed
class Fetch36HoursWeatherRequestDto with _$Fetch36HoursWeatherRequestDto {
  factory Fetch36HoursWeatherRequestDto({
    String? elementName,
    String? locationName,
    required String Authorization,
  }) = _Fetch36HoursWeatherRequestDto;

  factory Fetch36HoursWeatherRequestDto.fromJson(Map<String, dynamic> json) =>
      _$Fetch36HoursWeatherRequestDtoFromJson(json);
}
