import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  factory LoginState({
    required DateTime currentTime,
    required Decimal totalCost,
    required Decimal lastMonthCost,
    required Decimal currentMonthCost,
    required Decimal costChangeRate,
  }) = _LoginState;

  factory LoginState.init() => LoginState(
        currentTime: DateTime.now(),
        totalCost: Decimal.zero,
        lastMonthCost: Decimal.zero,
        currentMonthCost: Decimal.zero,
        costChangeRate: Decimal.zero,
      );
}
