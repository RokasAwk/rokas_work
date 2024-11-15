// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_36_hours_weather_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Fetch36HoursWeatherResponseDtoImpl
    _$$Fetch36HoursWeatherResponseDtoImplFromJson(Map<String, dynamic> json) =>
        _$Fetch36HoursWeatherResponseDtoImpl(
          records: json['records'] == null
              ? null
              : Fetch36HoursWeatherRecordsResponseDto.fromJson(
                  json['records'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$Fetch36HoursWeatherResponseDtoImplToJson(
        _$Fetch36HoursWeatherResponseDtoImpl instance) =>
    <String, dynamic>{
      'records': instance.records,
    };
