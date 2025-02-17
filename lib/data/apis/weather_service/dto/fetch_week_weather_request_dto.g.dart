// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_week_weather_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FetchWeekWeatherRequestDtoImpl _$$FetchWeekWeatherRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchWeekWeatherRequestDtoImpl(
      ElementName: (json['ElementName'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      LocationName: (json['LocationName'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      Authorization: json['Authorization'] as String,
    );

Map<String, dynamic> _$$FetchWeekWeatherRequestDtoImplToJson(
        _$FetchWeekWeatherRequestDtoImpl instance) =>
    <String, dynamic>{
      'ElementName': instance.ElementName,
      'LocationName': instance.LocationName,
      'Authorization': instance.Authorization,
    };
