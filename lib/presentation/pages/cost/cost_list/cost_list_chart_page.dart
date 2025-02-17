import 'package:auto_route/annotations.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rokas_work/l10n/l10n.dart';
import 'package:rokas_work/presentation/theme/app_colors.dart';
import 'package:rokas_work/presentation/theme/app_text_styles.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../domain/entity/cost_info.dart';
import '../../../../domain/value_object/cost_type.dart';
import '../../../di_providers/di_provider.dart';
import '../cost_state.dart';

@RoutePage()
class CostListChartPage extends ConsumerStatefulWidget {
  const CostListChartPage({
    super.key,
  });

  @override
  ConsumerState<CostListChartPage> createState() => _CostListChartPageState();
}

class _CostListChartPageState extends ConsumerState<CostListChartPage> {
  var size;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    CostState state = ref.watch(costStateNotifierProvider);

    Decimal totalCost = Decimal.zero;
    for (var element in state.costDataSource.values) {
      totalCost = totalCost + element;
    }

    List<_CostData> dataSource = List.generate(
        state.costDataSource.length,
        (index) => _CostData(
            CostTypeHelper.name(state.costDataSource.keys.elementAt(index)),
            _calPercentage(
                value: state.costDataSource.values.elementAt(index),
                total: totalCost)));

    return Scaffold(
        appBar: AppBar(
          title: Text(L10n.tr.page_cost_list_pie_chart_title),
          leading: const BackButton(),
        ),
        backgroundColor: AppColors.neutral_40,
        body: _buildBody(
          state: state,
          size: size,
          dataSource: dataSource,
        ));
  }

  Widget _buildBody({
    required CostState state,
    required Size size,
    required List<_CostData>? dataSource,
  }) {
    Decimal total = Decimal.fromInt(100);
    final isZero = (total == Decimal.zero);

    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      _pieChart(
        isZero: isZero,
        dataSource: dataSource,
      ),
      _listView(
        state: state,
        context: context,
      ),
    ]);
  }
}

Widget _listView({
  required CostState state,
  required BuildContext context,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.5,
        child: ListView.separated(
            itemBuilder: (context, index) => Row(
                  children: [
                    Text(
                      CostTypeHelper.name(
                          state.costDataSource.keys.elementAt(index)),
                      style: AppTextStyles.appW600Primary,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    Text(
                      '${state.costDataSource.values.elementAt(index)}',
                      style: AppTextStyles.appW400Primary,
                    ),
                  ],
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: state.costDataSource.length)),
  );
}

Widget _pieChart({
  required bool isZero,
  required List<_CostData>? dataSource,
}) {
  return SizedBox(
    height: 200,
    width: 200,
    child: SfCircularChart(
      palette: (isZero)
          ? [AppColors.neutral_200]
          : [
              AppColors.b_1,
              AppColors.b_2,
              AppColors.b_3,
              AppColors.g_20,
              AppColors.g_50,
              AppColors.g_100,
              AppColors.g_200,
              AppColors.g_300,
              AppColors.g_400,
              AppColors.g_500,
              AppColors.g_600,
            ],
      margin: EdgeInsets.zero,
      tooltipBehavior: TooltipBehavior(
        activationMode: ActivationMode.singleTap,
        enable: !isZero,
        color: AppColors.neutral_700,
        builder: (data, point, series, pointIndex, seriesIndex) {
          if (data is _CostData) {
            final String tipMsg = '${data.text}: ${data.value.toString()} TWD';

            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 8,
              ),
              child: Text(tipMsg, style: AppTextStyles.appW400WhiteMedium),
            );
          }
          return Container();
        },
      ),
      series: [
        DoughnutSeries<_CostData, int>(
          enableTooltip: true,
          dataSource: dataSource,
          xValueMapper: (data, index) => index,
          yValueMapper: (data, _) => data.value.toDouble(),
        ),
      ],
    ),
  );
}

class _CostData {
  _CostData(this.text, this.value);
  final String text;
  final Decimal value;
}

Decimal _calPercentage({
  required Decimal value,
  required Decimal total,
}) {
  if (total == Decimal.zero) {
    return Decimal.zero;
  }
  return ((value / total).toDecimal(scaleOnInfinitePrecision: 8) *
          Decimal.parse('100'))
      .round(scale: 2);
}
