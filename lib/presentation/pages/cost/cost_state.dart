import 'dart:math';

import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rokas_work/presentation/pages/cost/cost_const.dart';

import '../../../domain/entity/cost_info.dart';
import '../../../domain/value_object/cost_type.dart';

part 'cost_state.freezed.dart';

@freezed
class CostState with _$CostState {
  factory CostState({
    required Decimal totalCost,
    required Decimal lastMonthCost,
    required Decimal currentMonthCost,
    required Decimal costChangeRate,
    required String currentCostType,
    required List<CostInfo> costList,
    required Map<CostType, Decimal> costDataSource,
  }) = _CostState;

  factory CostState.init() => CostState(
      totalCost: Decimal.zero,
      lastMonthCost: Decimal.zero,
      currentMonthCost: Decimal.zero,
      costChangeRate: Decimal.zero,
      currentCostType: CostTypeHelper.name(CostType.eat),
      costList: [],
      costDataSource: {});
}
