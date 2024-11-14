class ElementValue {
  final String weatherDescription;

  ElementValue({
    required this.weatherDescription,
  });

  factory ElementValue.empty() => ElementValue(
        weatherDescription: '',
      );

  ElementValue copyWith({
    String? weatherDescription,
  }) {
    return ElementValue(
      weatherDescription: weatherDescription ?? this.weatherDescription,
    );
  }
}
