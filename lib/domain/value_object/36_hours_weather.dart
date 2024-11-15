import '36_hours_weather_element.dart';

class ThirtySixHoursWeather {
  final String locationName;
  final List<ThirtySixHoursWeatherElement> weatherElement;

  ThirtySixHoursWeather({
    required this.locationName,
    required this.weatherElement,
  });

  factory ThirtySixHoursWeather.empty() => ThirtySixHoursWeather(
        locationName: '',
        weatherElement: [ThirtySixHoursWeatherElement.empty()],
      );

  ThirtySixHoursWeather copyWith({
    String? locationName,
    List<ThirtySixHoursWeatherElement>? weatherElement,
  }) {
    return ThirtySixHoursWeather(
      locationName: locationName ?? this.locationName,
      weatherElement: weatherElement ?? this.weatherElement,
    );
  }
}
