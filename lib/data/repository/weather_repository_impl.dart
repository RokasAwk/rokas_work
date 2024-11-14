import 'dart:async';

import 'package:rokas_work/domain/value_object/time.dart';
import 'package:rokas_work/domain/value_object/weather_element.dart';
import 'package:rokas_work/domain/value_object/week_weather.dart';
import 'package:rokas_work/presentation/utils/date_util.dart';

import '../../domain/repository/weather_repository.dart';
import '../../domain/value_object/element_value.dart';
import '../apis/weather_service/dto/fetch_week_weather_location_response_dto.dart';
import '../apis/weather_service/dto/fetch_week_weather_request_dto.dart';
import '../apis/weather_service/dto/fetch_week_weather_time_response_dto.dart';
import '../apis/weather_service/weather_api.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  WeatherRepositoryImpl({
    required WeatherApi Function() weatherApi,
  }) : _weatherApi = weatherApi;

  final WeatherApi Function() _weatherApi;
  String apiAuthKey = 'CWB-E68F8F42-6ED1-4ACC-9E55-1B74BB42588C';

  @override
  Future<List<WeekWeather>> fetchWeekWeather({
    String? elementName,
    String? locationName,
  }) async {
    FetchWeekWeatherRequestDto dto = FetchWeekWeatherRequestDto(
      elementName: elementName,
      locationName: locationName,
      Authorization: apiAuthKey,
    );
    var r = await _weatherApi().fetchWeekWeather(dto);

    List<WeekWeather> weekWeatherList = r.records!.locations![0].location!
        .map((e) => e.toWeekWeather())
        .toList();

    return weekWeatherList;
  }
}

extension FetchWeekWeatherLocationResponseDtoMapper
    on FetchWeekWeatherLocationResponseDto {
  WeekWeather toWeekWeather() {
    return WeekWeather(
      locationName: locationName ?? '',
      weatherElement: WeatherElement(
          time: weatherElement![0].time!.map((e) => e.toTime()).toList()),
    );
  }
}

extension FetchWeekWeatherTimeResponseDtoMapper
    on FetchWeekWeatherTimeResponseDto {
  Time toTime() {
    return Time(
      startTime: startTime ?? DateTime.parse('1970-01-01').toDateTimeString(),
      endTime: endTime ?? DateTime.parse('1970-01-01').toDateTimeString(),
      elementValue:
          ElementValue(weatherDescription: elementValue?[0].value ?? ''),
    );
  }
}
