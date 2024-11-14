import 'package:rokas_work/domain/value_object/weather_element.dart';

class WeekWeather {
  final String locationName;
  final WeatherElement weatherElement;

  WeekWeather({
    required this.locationName,
    required this.weatherElement,
  });

  factory WeekWeather.empty() => WeekWeather(
        locationName: '',
        weatherElement: WeatherElement.empty(),
      );

  WeekWeather copyWith({
    String? locationName,
    WeatherElement? weatherElement,
  }) {
    return WeekWeather(
      locationName: locationName ?? this.locationName,
      weatherElement: weatherElement ?? this.weatherElement,
    );
  }
}
