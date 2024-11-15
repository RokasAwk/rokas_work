class WeekElementValue {
  final String weatherDescription;

  WeekElementValue({
    required this.weatherDescription,
  });

  factory WeekElementValue.empty() => WeekElementValue(
        weatherDescription: '',
      );

  WeekElementValue copyWith({
    String? weatherDescription,
  }) {
    return WeekElementValue(
      weatherDescription: weatherDescription ?? this.weatherDescription,
    );
  }
}
