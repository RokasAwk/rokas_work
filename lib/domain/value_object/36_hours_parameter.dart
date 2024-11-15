import 'week_element_value.dart';

class ThirtySixHoursParameter {
  final String parameterName;
  ThirtySixHoursParameter({
    required this.parameterName,
  });

  factory ThirtySixHoursParameter.empty() => ThirtySixHoursParameter(
        parameterName: '',
      );

  ThirtySixHoursParameter copyWith({
    String? parameterName,
  }) {
    return ThirtySixHoursParameter(
      parameterName: parameterName ?? this.parameterName,
    );
  }
}
