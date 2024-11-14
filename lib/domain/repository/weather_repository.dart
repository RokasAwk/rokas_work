import '../value_object/week_weather.dart';

abstract class WeatherRepository {
  Future<List<WeekWeather>> fetchWeekWeather({String? elementName});
}
