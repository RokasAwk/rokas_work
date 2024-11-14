// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_week_weather_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FetchWeekWeatherResponseDtoImpl _$$FetchWeekWeatherResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchWeekWeatherResponseDtoImpl(
      records: json['records'] == null
          ? null
          : FetchWeekWeatherRecordsResponseDto.fromJson(
              json['records'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FetchWeekWeatherResponseDtoImplToJson(
        _$FetchWeekWeatherResponseDtoImpl instance) =>
    <String, dynamic>{
      'records': instance.records,
    };
