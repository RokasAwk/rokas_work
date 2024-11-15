// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_36_hours_weather_location_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Fetch36HoursWeatherLocationResponseDtoImpl
    _$$Fetch36HoursWeatherLocationResponseDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$Fetch36HoursWeatherLocationResponseDtoImpl(
          locationName: json['locationName'] as String?,
          weatherElement: (json['weatherElement'] as List<dynamic>?)
              ?.map((e) =>
                  Fetch36HoursWeatherWeatherElementResponseDto.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$Fetch36HoursWeatherLocationResponseDtoImplToJson(
        _$Fetch36HoursWeatherLocationResponseDtoImpl instance) =>
    <String, dynamic>{
      'locationName': instance.locationName,
      'weatherElement': instance.weatherElement,
    };
