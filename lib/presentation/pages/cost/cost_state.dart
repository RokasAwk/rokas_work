import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cost_state.freezed.dart';

@freezed
class CostState with _$CostState {
  factory CostState({
    required DateTime currentTime,
    required Decimal totalCost,
    required Decimal lastMonthCost,
    required Decimal currentMonthCost,
    required Decimal costChangeRate,
  }) = _CostState;

  factory CostState.init() => CostState(
        currentTime: DateTime.now(),
        totalCost: Decimal.zero,
        lastMonthCost: Decimal.zero,
        currentMonthCost: Decimal.zero,
        costChangeRate: Decimal.zero,
      );
}
