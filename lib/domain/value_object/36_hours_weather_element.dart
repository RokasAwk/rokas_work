import '36_hours_time.dart';
import 'week_time.dart';

class ThirtySixHoursWeatherElement {
  final String elementName;
  final List<ThirtySixHoursTime> time;

  ThirtySixHoursWeatherElement({
    required this.elementName,
    required this.time,
  });

  factory ThirtySixHoursWeatherElement.empty() => ThirtySixHoursWeatherElement(
        elementName: '',
        time: [
          ThirtySixHoursTime.empty(),
        ],
      );

  ThirtySixHoursWeatherElement copyWith({
    String? elementName,
    List<ThirtySixHoursTime>? time,
  }) {
    return ThirtySixHoursWeatherElement(
      elementName: elementName ?? this.elementName,
      time: time ?? this.time,
    );
  }
}
