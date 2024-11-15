import 'week_time.dart';

class WeekWeatherElement {
  final List<WeekTime> time;

  WeekWeatherElement({
    required this.time,
  });

  factory WeekWeatherElement.empty() => WeekWeatherElement(
        time: [
          WeekTime.empty(),
        ],
      );

  WeekWeatherElement copyWith({
    List<WeekTime>? time,
  }) {
    return WeekWeatherElement(
      time: time ?? this.time,
    );
  }
}
