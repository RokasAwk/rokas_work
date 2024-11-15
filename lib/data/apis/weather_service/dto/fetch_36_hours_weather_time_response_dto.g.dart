// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_36_hours_weather_time_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Fetch36HoursWeatherTimeResponseDtoImpl
    _$$Fetch36HoursWeatherTimeResponseDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$Fetch36HoursWeatherTimeResponseDtoImpl(
          startTime: json['startTime'] as String?,
          endTime: json['endTime'] as String?,
          parameter: json['parameter'] == null
              ? null
              : Fetch36HoursWeatherParameterResponseDto.fromJson(
                  json['parameter'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$Fetch36HoursWeatherTimeResponseDtoImplToJson(
        _$Fetch36HoursWeatherTimeResponseDtoImpl instance) =>
    <String, dynamic>{
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'parameter': instance.parameter,
    };
