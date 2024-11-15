import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rokas_work/domain/value_object/week_weather.dart';

import '../../../domain/value_object/36_hours_weather.dart';

part 'weather_state.freezed.dart';

@freezed
class WeatherState with _$WeatherState {
  factory WeatherState.loading() = Loading;
  factory WeatherState.success({
    required List<WeekWeather> weekWeatherDataList,
    required List<ThirtySixHoursWeather> thirtySixHoursWeatherDataList,
    required String currentCity,
  }) = Success;
  factory WeatherState.error() = Error;
}
