// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_36_hours_weather_weather_element_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Fetch36HoursWeatherWeatherElementResponseDtoImpl
    _$$Fetch36HoursWeatherWeatherElementResponseDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$Fetch36HoursWeatherWeatherElementResponseDtoImpl(
          elementName: json['elementName'] as String?,
          time: (json['time'] as List<dynamic>?)
              ?.map((e) => Fetch36HoursWeatherTimeResponseDto.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$Fetch36HoursWeatherWeatherElementResponseDtoImplToJson(
        _$Fetch36HoursWeatherWeatherElementResponseDtoImpl instance) =>
    <String, dynamic>{
      'elementName': instance.elementName,
      'time': instance.time,
    };
