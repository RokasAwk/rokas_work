// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_week_weather_location_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FetchWeekWeatherLocationResponseDtoImpl
    _$$FetchWeekWeatherLocationResponseDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$FetchWeekWeatherLocationResponseDtoImpl(
          LocationName: json['LocationName'] as String?,
          WeatherElement: (json['WeatherElement'] as List<dynamic>?)
              ?.map((e) => FetchWeekWeatherWeatherElementResponseDto.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$FetchWeekWeatherLocationResponseDtoImplToJson(
        _$FetchWeekWeatherLocationResponseDtoImpl instance) =>
    <String, dynamic>{
      'LocationName': instance.LocationName,
      'WeatherElement': instance.WeatherElement,
    };
