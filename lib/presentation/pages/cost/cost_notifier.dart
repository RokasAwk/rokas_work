import 'dart:math';

import 'package:decimal/decimal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rokas_work/domain/entity/cost_info.dart';
import 'package:rokas_work/presentation/services/firestore_service/firestore_cost_list_service.dart';

import '../../../domain/value_object/cost_type.dart';
import '../../routers/router.dart';
import 'cost_state.dart';

abstract class CostNotifier extends StateNotifier<CostState> {
  CostNotifier(super.state);

  void updateCost({
    required String addCost,
  });

  void updateCostList({
    required List<CostInfo> dataList,
  });

  void updateCostType({
    required String costType,
  });

  void goToHistoryPage();
  void goToHistoryChartPage();

  void addCostList({
    required String itemName,
    required Decimal price,
    required CostType costType,
  });
}

class CostNotifierImpl extends CostNotifier {
  final AppRouter appRouter;

  CostNotifierImpl({
    required this.appRouter,
  }) : super(CostState.init());

  @override
  void updateCost({
    required String addCost,
  }) {
    Decimal newCost = state.currentMonthCost + Decimal.parse(addCost);
    Decimal newTotal = state.lastMonthCost + newCost;
    state = state.copyWith(
      totalCost: newTotal,
      currentMonthCost: newCost,
    );
  }

  @override
  void updateCostList({
    required List<CostInfo> dataList,
  }) {
    // List<CostInfo> newList = List.from(state.costList)
    //   ..add(CostInfo(
    //       id: Random().nextInt(99999999),
    //       itemName: itemName,
    //       price: price,
    //       memo: memo,
    //       costType: costType,
    //       createTime: DateTime.now()));

    Decimal costChangeRate = state.lastMonthCost == Decimal.zero
        ? state.currentMonthCost
        : (state.currentMonthCost / state.lastMonthCost).toDecimal();

    state = state.copyWith(costList: dataList, costChangeRate: costChangeRate);
  }

  @override
  void updateCostType({
    required String costType,
  }) {
    state = state.copyWith(currentCostType: costType);
  }

  @override
  void goToHistoryPage() {
    appRouter.push(const CostListRoute());
  }

  @override
  void goToHistoryChartPage() {
    _calTotalData();
    appRouter.push(const CostListChartRoute());
  }

  @override
  void addCostList({
    required String itemName,
    required Decimal price,
    required CostType costType,
  }) {
    CostInfo costData = CostInfo(
        id: Random().nextInt(99999999),
        itemName: itemName,
        price: price,
        costType: costType,
        createTime: DateTime.now());
    FirestoreCostListService().addData(costData);
  }

  void _calTotalData() {
    Map<CostType, Decimal> dataSource = {};
    for (var element in state.costList) {
      if (!dataSource.keys.contains(element.costType)) {
        dataSource.addAll({element.costType: element.price});
      } else {
        dataSource.update(element.costType,
            (value) => dataSource[element.costType]! + element.price);
      }
    }
    state = state.copyWith(costDataSource: dataSource);
  }
}
