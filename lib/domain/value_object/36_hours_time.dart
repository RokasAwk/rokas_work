import '36_hours_parameter.dart';

class ThirtySixHoursTime {
  final String startTime;
  final String endTime;
  final ThirtySixHoursParameter parameter;

  ThirtySixHoursTime({
    required this.startTime,
    required this.endTime,
    required this.parameter,
  });

  factory ThirtySixHoursTime.empty() => ThirtySixHoursTime(
        startTime: '',
        endTime: '',
        parameter: ThirtySixHoursParameter.empty(),
      );

  ThirtySixHoursTime copyWith({
    String? startTime,
    String? endTime,
    ThirtySixHoursParameter? parameter,
  }) {
    return ThirtySixHoursTime(
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      parameter: parameter ?? this.parameter,
    );
  }
}
