import 'element_value.dart';

class Time {
  final String startTime;
  final String endTime;
  final ElementValue elementValue;

  Time({
    required this.startTime,
    required this.endTime,
    required this.elementValue,
  });

  factory Time.empty() => Time(
        startTime: '',
        endTime: '',
        elementValue: ElementValue.empty(),
      );

  Time copyWith({
    String? startTime,
    String? endTime,
    ElementValue? elementValue,
  }) {
    return Time(
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      elementValue: elementValue ?? this.elementValue,
    );
  }
}
