import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rokas_work/domain/value_object/week_weather.dart';

part 'weather_state.freezed.dart';

@freezed
class WeatherState with _$WeatherState {
  factory WeatherState.loading() = Loading;
  factory WeatherState.success({
    required List<WeekWeather> weatherDataList,
  }) = Success;
  factory WeatherState.error() = Error;
}
