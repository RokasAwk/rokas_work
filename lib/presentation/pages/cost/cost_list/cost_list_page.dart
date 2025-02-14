import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rokas_work/l10n/l10n.dart';
import 'package:rokas_work/presentation/pages/widgets/empty_list_widget.dart';
import 'package:rokas_work/presentation/services/firestore_service/firestore_cost_list_service.dart';
import 'package:rokas_work/presentation/theme/app_colors.dart';
import 'package:rokas_work/presentation/theme/app_text_styles.dart';
import 'package:rokas_work/presentation/utils/date_util.dart';

import '../../../../domain/entity/cost_info.dart';
import '../../../../domain/value_object/cost_type.dart';
import '../../../di_providers/di_provider.dart';
import '../cost_notifier.dart';
import '../cost_state.dart';

@RoutePage()
class CostListPage extends ConsumerStatefulWidget {
  const CostListPage({
    super.key,
  });

  @override
  ConsumerState<CostListPage> createState() => _CostListPageState();
}

class _CostListPageState extends ConsumerState<CostListPage> {
  var size;

  @override
  void initState() {
    CostNotifier notifier = ref.read(costStateNotifierProvider.notifier);

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      FirestoreCostListService().listenToData();
      List<CostInfo> dataList = await FirestoreCostListService().getData();

      notifier.updateCostList(dataList: dataList);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    CostState state = ref.watch(costStateNotifierProvider);
    CostNotifier notifier = ref.read(costStateNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text(L10n.tr.page_cost_list_title),
        leading: const BackButton(),
      ),
      backgroundColor: AppColors.grey,
      body: state.costList.isEmpty
          ? const EmptyListWidget()
          : _buildBody(
              state: state,
              size: size,
            ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () => notifier.goToHistoryChartPage(),
        backgroundColor: AppColors.border,
        child: const Icon(Icons.bar_chart),
      ),
    );
  }

  Widget _buildBody({
    required CostState state,
    required Size size,
  }) {
    return _buildCostList(state: state);
  }

  Widget _buildCostList({
    required CostState state,
  }) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return Column(children: [
            if (index == 0) ...[const SizedBox(height: 16)],
            _buildTextTile(
              info: state.costList[index],
              size: size,
            ),
          ]);
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemCount: state.costList.length);
  }
}

Widget _buildTextTile({
  required CostInfo info,
  required Size size,
}) {
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListTile(
        title: Text(
          info.itemName,
          style: AppTextStyles.appW400Primary,
        ),
        subtitle: Text(
          info.createTime.toDateTimeString(),
          style: AppTextStyles.appW400BlueGrayMedium,
        ),
        shape: Border.all(color: AppColors.white),
        tileColor: AppColors.white,
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '${info.price}',
              style: AppTextStyles.appW400Primary,
            ),
            SizedBox(
                width: size.width * 0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FaIcon(
                      getCostTypeIcon(costType: info.costType),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      info.costType.name,
                      style: AppTextStyles.appW400Primary,
                    )
                  ],
                ))
          ],
        ),
        contentPadding: const EdgeInsets.all(16),
      ));
}

IconData getCostTypeIcon({required CostType costType}) {
  switch (costType) {
    case CostType.eat:
      return FontAwesomeIcons.hamburger;
    case CostType.drink:
      return FontAwesomeIcons.wineBottle;
    case CostType.bill:
      return FontAwesomeIcons.dollar;
    case CostType.dailyLife:
      return FontAwesomeIcons.sun;
    case CostType.entertainment:
      return FontAwesomeIcons.gamepad;
    case CostType.hotel:
      return FontAwesomeIcons.hotel;
    case CostType.traffic:
      return FontAwesomeIcons.car;
    case CostType.invest:
      return FontAwesomeIcons.moneyBillWave;
    case CostType.pet:
      return FontAwesomeIcons.paw;
    case CostType.learn:
      return FontAwesomeIcons.book;

    default:
      return FontAwesomeIcons.moneyCheck;
  }
}
