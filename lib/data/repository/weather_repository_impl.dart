import 'dart:async';

import 'package:rokas_work/data/apis/weather_service/dto/fetch_36_hours_weather_parameter_response_dto.dart';
import 'package:rokas_work/data/apis/weather_service/dto/fetch_36_hours_weather_weather_element_response_dto.dart';
import 'package:rokas_work/domain/value_object/36_hours_parameter.dart';
import 'package:rokas_work/domain/value_object/36_hours_weather.dart';
import 'package:rokas_work/domain/value_object/36_hours_weather_element.dart';
import 'package:rokas_work/domain/value_object/week_time.dart';
import 'package:rokas_work/domain/value_object/week_weather_element.dart';
import 'package:rokas_work/domain/value_object/week_weather.dart';
import 'package:rokas_work/presentation/pages/weather/weather_const.dart';
import 'package:rokas_work/presentation/utils/date_util.dart';

import '../../domain/repository/weather_repository.dart';
import '../../domain/value_object/36_hours_time.dart';
import '../../domain/value_object/week_element_value.dart';
import '../apis/weather_service/dto/fetch_36_hours_weather_location_response_dto.dart';
import '../apis/weather_service/dto/fetch_36_hours_weather_request_dto.dart';
import '../apis/weather_service/dto/fetch_36_hours_weather_time_response_dto.dart';
import '../apis/weather_service/dto/fetch_week_weather_location_response_dto.dart';
import '../apis/weather_service/dto/fetch_week_weather_request_dto.dart';
import '../apis/weather_service/dto/fetch_week_weather_time_response_dto.dart';
import '../apis/weather_service/weather_api.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  WeatherRepositoryImpl({
    required WeatherApi Function() weatherApi,
  }) : _weatherApi = weatherApi;

  final WeatherApi Function() _weatherApi;

  @override
  Future<List<WeekWeather>> fetchWeekWeather({
    String? elementName,
    String? locationName,
  }) async {
    FetchWeekWeatherRequestDto dto = FetchWeekWeatherRequestDto(
      elementName: elementName,
      locationName: locationName,
      Authorization: WeatherConst.authKey,
    );
    var r = await _weatherApi().fetchWeekWeather(dto);

    List<WeekWeather> weekWeatherList = r.records!.locations![0].location!
        .map((e) => e.toWeekWeather())
        .toList();

    return weekWeatherList;
  }

  @override
  Future<List<ThirtySixHoursWeather>> fetch36HoursWeather({
    String? elementName,
    String? locationName,
  }) async {
    Fetch36HoursWeatherRequestDto dto = Fetch36HoursWeatherRequestDto(
      elementName: elementName,
      locationName: locationName,
      Authorization: WeatherConst.authKey,
    );
    var r = await _weatherApi().fetch36HoursWeather(dto);

    List<ThirtySixHoursWeather> weekWeatherList =
        r.records!.location!.map((e) => e.toThirtySixHoursWeather()).toList();

    return weekWeatherList;
  }
}

extension FetchWeekWeatherLocationResponseDtoMapper
    on FetchWeekWeatherLocationResponseDto {
  WeekWeather toWeekWeather() {
    return WeekWeather(
      locationName: locationName ?? '',
      weatherElement: WeekWeatherElement(
          time: weatherElement![0].time!.map((e) => e.toWeekTime()).toList()),
    );
  }
}

extension FetchWeekWeatherTimeResponseDtoMapper
    on FetchWeekWeatherTimeResponseDto {
  WeekTime toWeekTime() {
    return WeekTime(
      startTime: startTime ?? DateTime.parse('1970-01-01').toDateTimeString(),
      endTime: endTime ?? DateTime.parse('1970-01-01').toDateTimeString(),
      elementValue:
          WeekElementValue(weatherDescription: elementValue?[0].value ?? ''),
    );
  }
}

extension Fetch36HoursWeatherLocationResponseDtoMapper
    on Fetch36HoursWeatherLocationResponseDto {
  ThirtySixHoursWeather toThirtySixHoursWeather() {
    return ThirtySixHoursWeather(
        locationName: locationName ?? '',
        weatherElement: weatherElement
                ?.map((e) => e.toThirtySixHoursWeatherElement())
                .toList() ??
            []);
  }
}

extension Fetch36HoursWeatherWeatherElementResponseDtoMapper
    on Fetch36HoursWeatherWeatherElementResponseDto {
  ThirtySixHoursWeatherElement toThirtySixHoursWeatherElement() {
    return ThirtySixHoursWeatherElement(
        elementName: elementName ?? '',
        time: time?.map((e) => e.to36HoursTime()).toList() ?? []);
  }
}

extension Fetch36HoursWeatherTimeResponseDtoMapper
    on Fetch36HoursWeatherTimeResponseDto {
  ThirtySixHoursTime to36HoursTime() {
    return ThirtySixHoursTime(
      startTime: startTime ?? DateTime.parse('1970-01-01').toDateTimeString(),
      endTime: endTime ?? DateTime.parse('1970-01-01').toDateTimeString(),
      parameter: ThirtySixHoursParameter(
          parameterName: parameter?.to36HoursParameter().parameterName ?? ''),
    );
  }
}

extension Fetch36HoursWeatherParameterResponseDtoMapper
    on Fetch36HoursWeatherParameterResponseDto {
  ThirtySixHoursParameter to36HoursParameter() {
    return ThirtySixHoursParameter(parameterName: parameterName ?? '');
  }
}
