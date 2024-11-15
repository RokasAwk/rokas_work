import 'package:rokas_work/domain/value_object/week_weather_element.dart';

class WeekWeather {
  final String locationName;
  final WeekWeatherElement weatherElement;

  WeekWeather({
    required this.locationName,
    required this.weatherElement,
  });

  factory WeekWeather.empty() => WeekWeather(
        locationName: '',
        weatherElement: WeekWeatherElement.empty(),
      );

  WeekWeather copyWith({
    String? locationName,
    WeekWeatherElement? weatherElement,
  }) {
    return WeekWeather(
      locationName: locationName ?? this.locationName,
      weatherElement: weatherElement ?? this.weatherElement,
    );
  }
}
