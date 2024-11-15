import 'week_element_value.dart';

class WeekTime {
  final String startTime;
  final String endTime;
  final WeekElementValue elementValue;

  WeekTime({
    required this.startTime,
    required this.endTime,
    required this.elementValue,
  });

  factory WeekTime.empty() => WeekTime(
        startTime: '',
        endTime: '',
        elementValue: WeekElementValue.empty(),
      );

  WeekTime copyWith({
    String? startTime,
    String? endTime,
    WeekElementValue? elementValue,
  }) {
    return WeekTime(
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      elementValue: elementValue ?? this.elementValue,
    );
  }
}
