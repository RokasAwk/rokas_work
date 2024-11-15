// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_36_hours_weather_records_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Fetch36HoursWeatherRecordsResponseDtoImpl
    _$$Fetch36HoursWeatherRecordsResponseDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$Fetch36HoursWeatherRecordsResponseDtoImpl(
          location: (json['location'] as List<dynamic>?)
              ?.map((e) => Fetch36HoursWeatherLocationResponseDto.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$Fetch36HoursWeatherRecordsResponseDtoImplToJson(
        _$Fetch36HoursWeatherRecordsResponseDtoImpl instance) =>
    <String, dynamic>{
      'location': instance.location,
    };
