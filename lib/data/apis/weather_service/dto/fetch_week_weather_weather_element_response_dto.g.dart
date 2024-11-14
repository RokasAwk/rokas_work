// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_week_weather_weather_element_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FetchWeekWeatherWeatherElementResponseDtoImpl
    _$$FetchWeekWeatherWeatherElementResponseDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$FetchWeekWeatherWeatherElementResponseDtoImpl(
          time: (json['time'] as List<dynamic>?)
              ?.map((e) => FetchWeekWeatherTimeResponseDto.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$FetchWeekWeatherWeatherElementResponseDtoImplToJson(
        _$FetchWeekWeatherWeatherElementResponseDtoImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
    };
