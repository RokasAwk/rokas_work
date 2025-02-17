// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_week_weather_locations_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FetchWeekWeatherLocationsResponseDtoImpl
    _$$FetchWeekWeatherLocationsResponseDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$FetchWeekWeatherLocationsResponseDtoImpl(
          DatasetDescription: json['DatasetDescription'] as String?,
          Location: (json['Location'] as List<dynamic>?)
              ?.map((e) => FetchWeekWeatherLocationResponseDto.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$FetchWeekWeatherLocationsResponseDtoImplToJson(
        _$FetchWeekWeatherLocationsResponseDtoImpl instance) =>
    <String, dynamic>{
      'DatasetDescription': instance.DatasetDescription,
      'Location': instance.Location,
    };
