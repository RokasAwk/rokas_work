// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_week_weather_records_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FetchWeekWeatherRecordsResponseDtoImpl
    _$$FetchWeekWeatherRecordsResponseDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$FetchWeekWeatherRecordsResponseDtoImpl(
          locations: (json['locations'] as List<dynamic>?)
              ?.map((e) => FetchWeekWeatherLocationsResponseDto.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$FetchWeekWeatherRecordsResponseDtoImplToJson(
        _$FetchWeekWeatherRecordsResponseDtoImpl instance) =>
    <String, dynamic>{
      'locations': instance.locations,
    };
