import 'time.dart';

class WeatherElement {
  final List<Time> time;

  WeatherElement({
    required this.time,
  });

  factory WeatherElement.empty() => WeatherElement(
        time: [
          Time.empty(),
        ],
      );

  WeatherElement copyWith({
    List<Time>? time,
  }) {
    return WeatherElement(
      time: time ?? this.time,
    );
  }
}
