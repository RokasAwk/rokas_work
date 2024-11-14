// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_week_weather_time_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FetchWeekWeatherTimeResponseDtoImpl
    _$$FetchWeekWeatherTimeResponseDtoImplFromJson(Map<String, dynamic> json) =>
        _$FetchWeekWeatherTimeResponseDtoImpl(
          startTime: json['startTime'] as String?,
          endTime: json['endTime'] as String?,
          elementValue: (json['elementValue'] as List<dynamic>?)
              ?.map((e) => FetchWeekWeatherelEmentValueResponseDto.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$FetchWeekWeatherTimeResponseDtoImplToJson(
        _$FetchWeekWeatherTimeResponseDtoImpl instance) =>
    <String, dynamic>{
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'elementValue': instance.elementValue,
    };
