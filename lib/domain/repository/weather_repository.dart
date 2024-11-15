import '../value_object/36_hours_weather.dart';
import '../value_object/week_weather.dart';

abstract class WeatherRepository {
  Future<List<WeekWeather>> fetchWeekWeather({
    String? elementName,
    String? locationName,
  });
  Future<List<ThirtySixHoursWeather>> fetch36HoursWeather({
    String? elementName,
    String? locationName,
  });
}
