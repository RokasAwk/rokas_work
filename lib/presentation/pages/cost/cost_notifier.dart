import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../routers/router.dart';
import 'cost_state.dart';

abstract class CostNotifier extends StateNotifier<CostState> {
  CostNotifier(super.state);

  void updateCurrentTime({
    required DateTime currentTime,
  });
  void updateCost({
    required String addCost,
  });
}

class CostNotifierImpl extends CostNotifier {
  final AppRouter appRouter;

  CostNotifierImpl({
    required this.appRouter,
  }) : super(CostState.init());

  @override
  void updateCurrentTime({
    required DateTime currentTime,
  }) {
    state = state.copyWith(currentTime: currentTime);
  }

  @override
  void updateCost({
    required String addCost,
  }) {
    Decimal newCost = state.currentMonthCost + Decimal.parse(addCost);
    state = state.copyWith(currentMonthCost: newCost);
  }
}
