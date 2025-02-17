// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_week_weather_time_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FetchWeekWeatherTimeResponseDtoImpl
    _$$FetchWeekWeatherTimeResponseDtoImplFromJson(Map<String, dynamic> json) =>
        _$FetchWeekWeatherTimeResponseDtoImpl(
          StartTime: json['StartTime'] as String?,
          EndTime: json['EndTime'] as String?,
          ElementValue: (json['ElementValue'] as List<dynamic>?)
              ?.map((e) => FetchWeekWeatherelEmentValueResponseDto.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$FetchWeekWeatherTimeResponseDtoImplToJson(
        _$FetchWeekWeatherTimeResponseDtoImpl instance) =>
    <String, dynamic>{
      'StartTime': instance.StartTime,
      'EndTime': instance.EndTime,
      'ElementValue': instance.ElementValue,
    };
