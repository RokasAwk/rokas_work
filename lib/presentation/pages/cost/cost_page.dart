import 'package:auto_route/annotations.dart';
import 'package:decimal/decimal.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rokas_work/domain/entity/cost_info.dart';
import 'package:rokas_work/l10n/l10n.dart';
import 'package:rokas_work/presentation/pages/cost/cost_const.dart';
import 'package:rokas_work/presentation/services/firestore_service/firestore_cost_list_service.dart';
import 'package:rokas_work/presentation/theme/app_colors.dart';
import 'package:rokas_work/presentation/theme/app_text_styles.dart';
import 'package:rokas_work/presentation/utils/string_extension.dart';
import 'package:rokas_work/utils/toast_utils.dart';

import '../../../domain/value_object/cost_type.dart';
import '../../di_providers/di_provider.dart';
import '../../routers/router.dart';
import '../../services/firestore_service/firestore_cost_service.dart';
import '../widgets/common_border.dart';
import '../widgets/form_field_with_title.dart';
import '../widgets/icon_dialog.dart';
import 'cost_notifier.dart';
import 'cost_state.dart';

@RoutePage()
class CostPage extends ConsumerStatefulWidget {
  const CostPage({
    super.key,
  });

  @override
  ConsumerState<CostPage> createState() => _CostPageState();
}

class _CostPageState extends ConsumerState<CostPage> {
  var size;
  late final AppRouter appRouter;
  TextEditingController addItemController = TextEditingController();
  TextEditingController addCostController = TextEditingController();
  TextEditingController addMemoController = TextEditingController();

  @override
  void initState() {
    appRouter = ref.read(routerProvider);

    CostNotifier notifier = ref.read(costStateNotifierProvider.notifier);

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      FirestoreCostService().listenToData();
      FirestoreCostListService().listenToData();
      List<CostInfo> dataList = await FirestoreCostListService().getData();

      notifier.updateCostList(dataList: dataList);
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    CostState state = ref.watch(costStateNotifierProvider);
    CostNotifier notifier = ref.read(costStateNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text(L10n.tr.page_cost_title),
        leading: const BackButton(),
      ),
      body: _buildBody(
        state: state,
        notifier: notifier,
      ),
    );
  }

  Widget _buildBody({
    required CostState state,
    required CostNotifier notifier,
  }) {
    return SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 20,
            ),
            child: Column(
              children: [
                _buildTotalCostSection(
                  state: state,
                  notifier: notifier,
                ),
                const SizedBox(
                  height: 16,
                ),
                _buildAddCostTitle(),
                const SizedBox(
                  height: 16,
                ),
                _buildAddCostSection(notifier: notifier),
                const SizedBox(
                  height: 16,
                ),
                _buildAddButton(
                  notifier: notifier,
                  state: state,
                ),
              ],
            )));
  }

// 總花費區塊
  Widget _buildTotalCostSection({
    required CostState state,
    required CostNotifier notifier,
  }) {
    return Stack(alignment: Alignment.topRight, children: [
      Container(
        height: size.height * 0.25,
        width: size.width,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 20,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: AppColors.dividerLightGradientColors,
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCostCardTitle(title: L10n.tr.page_cost_total_cost),
            _buildCostCardBody(body: state.totalCost.toString(), fontSize: 24),
            Row(
              children: [
                Expanded(
                    child: _buildCostCardTitle(
                        title: L10n.tr.page_cost_current_month_cost)),
                Expanded(
                  child: _buildCostCardTitle(
                      title: L10n.tr.page_cost_last_month_cost),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: _buildCostCardBody(
                        body: state.currentMonthCost.toString(), fontSize: 20)),
                Expanded(
                    child: _buildCostCardBody(
                        body: state.lastMonthCost.toString(), fontSize: 20)),
              ],
            ),
            _buildCostCardTitle(title: L10n.tr.page_cost_month_change_cost),
            _buildCostCardBody(
              body: getChangeCost(
                  currentMonthCost: state.currentMonthCost,
                  lastMonthCost: state.lastMonthCost),
              fontSize: 20,
              isMoney: false,
            ),
          ],
        ),
      ),
      TextButton.icon(
        onPressed: () => notifier.goToHistoryPage(),
        icon: const FaIcon(
          FontAwesomeIcons.listUl,
          size: 20,
          color: AppColors.white,
        ),
        label: Text(
          L10n.tr.page_cost_history_list_button,
          style: AppTextStyles.appW600WhiteMedium,
        ),
      ),
    ]);
  }

// 花費區塊的標題
  Widget _buildCostCardTitle({
    required String title,
  }) {
    return Text(
      title,
      style: AppTextStyles.appW400Primary.copyWith(fontSize: 16),
    );
  }

// 花費區塊的數值
  Widget _buildCostCardBody({
    required String body,
    required double fontSize,
    bool isMoney = true,
  }) {
    return Text(
      isMoney ? body.formatNumberWithComma() : '$body%',
      style: AppTextStyles.appW400Primary.copyWith(fontSize: fontSize),
    );
  }

// 取得花費變化率
  String getChangeCost({
    required Decimal currentMonthCost,
    required Decimal lastMonthCost,
  }) {
    return (currentMonthCost - lastMonthCost).toString();
  }

// 分隔線
  Widget _buildDivider({
    bool isReverse = false,
  }) {
    return Container(
      height: 2,
      width: size.width * 0.2,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: isReverse ? Alignment.centerRight : Alignment.centerLeft,
        end: isReverse ? Alignment.centerLeft : Alignment.centerRight,
        colors: AppColors.dividerGradientColors,
      )),
    );
  }

// 新增花費的標題
  Widget _buildAddCostTitle() {
    return Row(
      children: [
        _buildDivider(),
        const Spacer(),
        Text(
          L10n.tr.page_cost_add_cost_title,
          style: AppTextStyles.appW400Primary,
        ),
        const Spacer(),
        _buildDivider(isReverse: true),
      ],
    );
  }

// 新增花費區塊
  Widget _buildAddCostSection({
    required CostNotifier notifier,
  }) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.b_2),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                L10n.tr.page_cost_add_cost_button_category,
                style: AppTextStyles.appW600N300Medium,
              ),
              const SizedBox(height: 4),
              DropdownSearch<String>(
                  selectedItem: CostConst.costType.first,
                  items: (filter, infiniteScrollProps) => CostConst.costType,
                  decoratorProps: DropDownDecoratorProps(
                    baseStyle: AppTextStyles.appW400Primary,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      enabledBorder: enableBorder(),
                      focusedBorder: focusBorder(),
                      errorBorder: errorBorder(),
                      hintText: L10n.tr.page_cost_add_cost_button_category_hint,
                      suffixIconColor: AppColors.primaryColor,
                    ),
                  ),
                  popupProps: PopupProps.menu(
                      fit: FlexFit.loose,
                      constraints: BoxConstraints(maxHeight: size.height * 0.3),
                      searchFieldProps: TextFieldProps(
                          textInputAction: TextInputAction.done,
                          controller: TextEditingController())),
                  onChanged: (value) =>
                      notifier.updateCostType(costType: value ?? '')),
              const SizedBox(
                height: 16,
              ),
              _buildFormField(
                controller: addItemController,
                titleText: L10n.tr.page_cost_add_cost_button_item,
                hintText: L10n.tr.page_cost_add_cost_button_item_hint,
              ),
              const SizedBox(
                height: 16,
              ),
              _buildFormField(
                controller: addCostController,
                titleText: L10n.tr.page_cost_add_cost_button_price,
                hintText: L10n.tr.page_cost_add_cost_button_price_hint,
              ),
              const SizedBox(
                height: 16,
              ),
              _buildFormField(
                controller: addMemoController,
                titleText: L10n.tr.page_cost_add_cost_button_memo,
                hintText: L10n.tr.page_cost_add_cost_button_memo_hint,
              )
            ],
          ),
        ));
  }

// 新增花費按鈕
  Widget _buildAddButton({
    required CostState state,
    required CostNotifier notifier,
  }) {
    return TextButton(
        onPressed: () {
          if (addItemController.text.isEmpty ||
              addCostController.text.isEmpty) {
            ToastUtils.showToast(L10n.tr.page_cost_add_cost_empty);
            return;
          }

          ToastUtils.showCustomDialog(_buildAddConfirmDialog(
            state: state,
            notifier: notifier,
          ));
        },
        style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(
                Size((MediaQuery.of(context).size.width - 32), 40)),
            backgroundColor: MaterialStateProperty.all(AppColors.blueGray)),
        child: Text(
          L10n.tr.page_cost_add_cost_button,
          style: AppTextStyles.appW600White.copyWith(fontSize: 20),
        ));
  }

// 新增花費的含標題文字輸入區
  Widget _buildFormField({
    required String titleText,
    required String hintText,
    required TextEditingController controller,
  }) {
    return FormFieldWithTitle(
      controller: controller,
      titleText: titleText,
      hintText: hintText,
    );
  }

  Widget _buildAddConfirmDialog({
    required CostNotifier notifier,
    required CostState state,
  }) {
    return IconDialog.warning(
        message: L10n.tr.common_add_hint,
        onCancel: () => appRouter.pop(),
        onConfirm: () {
          notifier.updateCost(addCost: addCostController.text);
          notifier.addCostList(
            itemName: addItemController.text,
            price: Decimal.parse(addCostController.text),
            costType: CostTypeHelper.toCostType(state.currentCostType),
          );
          // notifier.updateCostList(dataList: dataList);
          // notifier.updateCostList(
          //     itemName: addItemController.text,
          //     price: Decimal.parse(addCostController.text),
          //     memo: addMemoController.text,
          //     costType: CostTypeHelper.toCostType(state.currentCostType));
          addItemController.clear();
          addCostController.clear();
          addMemoController.clear();
          appRouter.pop();
        });
  }
}
