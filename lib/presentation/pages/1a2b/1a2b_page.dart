import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:otp_pin_field/otp_pin_field.dart';
import 'package:rokas_work/l10n/l10n.dart';
import 'package:rokas_work/presentation/pages/widgets/common_button.dart';
import 'package:rokas_work/presentation/pages/widgets/icon_dialog.dart';
import 'package:rokas_work/presentation/routers/router.dart';
import 'package:rokas_work/presentation/theme/app_colors.dart';
import 'package:rokas_work/presentation/theme/app_text_styles.dart';
import 'package:rokas_work/utils/toast_utils.dart';

import '../../di_providers/di_provider.dart';
import '../widgets/empty_list_widget.dart';
import '1a2b_notifier.dart';
import '1a2b_state.dart';

@RoutePage()
class OneATwoBPage extends ConsumerStatefulWidget {
  const OneATwoBPage({
    super.key,
  });

  @override
  ConsumerState<OneATwoBPage> createState() => _OneATwoBPageState();
}

class _OneATwoBPageState extends ConsumerState<OneATwoBPage> {
  var size;
  late final AppRouter appRouter;
  TextEditingController addItemController = TextEditingController();
  TextEditingController addCategoryController = TextEditingController();
  TextEditingController addCostController = TextEditingController();
  TextEditingController addMemoController = TextEditingController();

  ///  Otp pin Controller
  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();

  @override
  void initState() {
    appRouter = ref.read(routerProvider);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    OneATwoBState state = ref.watch(oneAtwoBStateNotifierProvider);
    OneATwoBNotifier notifier =
        ref.read(oneAtwoBStateNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text(L10n.tr.page_1A_2B_title_in_page),
        leading: const BackButton(),
      ),
      backgroundColor: AppColors.grey,
      body: _buildBody(
        state: state,
        notifier: notifier,
      ),
    );
  }

  Widget _buildBody({
    required OneATwoBState state,
    required OneATwoBNotifier notifier,
  }) {
    return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 20,
        ),
        child: Center(
            child: Column(
          children: [
            _buildTitle(),
            const SizedBox(height: 16),
            _buildGuessSection(
              state: state,
            ),
            _buildGuessButton(
              notifier: notifier,
              state: state,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('你猜過的答案'),
                Text('你猜對的回合'),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildGuessList(state: state),
                _buildTryCountList(state: state),
              ],
            )
          ],
        )));
  }

  Widget _buildTitle() {
    return Container(
      decoration: BoxDecoration(
          gradient:
              SweepGradient(colors: AppColors.dividerLightGradientColors)),
      child: Text(
        '========== ${L10n.tr.page_1A_2B_title_in_page} ==========',
        style: AppTextStyles.appW600White.copyWith(fontSize: 20),
      ),
    );
  }

  Widget _buildGuessSection({required OneATwoBState state}) {
    return Container(
      height: size.height * 0.2,
      width: size.width * 0.9,
      decoration: const BoxDecoration(
        color: AppColors.white,
        border: Border.symmetric(vertical: BorderSide(color: AppColors.orange)),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        OtpPinField(
          fieldWidth: size.width * 0.17,
          fieldHeight: size.width * 0.2,
          key: _otpPinFieldController,
          autoFillEnable: false,
          textInputAction: TextInputAction.done,
          onSubmit: (text) {
            debugPrint('Entered pin is $text');
          },
          onChange: (text) {
            debugPrint('Enter on change pin is $text');
          },
          onCodeChanged: (code) {
            debugPrint('onCodeChanged  is $code');
          },
          otpPinFieldStyle: OtpPinFieldStyle(
            textStyle: AppTextStyles.appW400Primary.copyWith(fontSize: 32),
            activeFieldBorderGradient:
                LinearGradient(colors: AppColors.dividerGradientColors),
            filledFieldBorderGradient:
                LinearGradient(colors: AppColors.balanceGradientColors),
            defaultFieldBorderGradient:
                LinearGradient(colors: AppColors.dividerGradientColors),
            fieldBorderWidth: 2,
          ),
          maxLength: 4,

          /// place otp pin field according to yourself
          mainAxisAlignment: MainAxisAlignment.center,

          /// predefine decorate of pinField use  OtpPinFieldDecoration.defaultPinBoxDecoration||OtpPinFieldDecoration.underlinedPinBoxDecoration||OtpPinFieldDecoration.roundedPinBoxDecoration
          ///use OtpPinFieldDecoration.custom  (by using this you can make Otp_Pin_Field according to yourself like you can give fieldBorderRadius,fieldBorderWidth and etc things)
          otpPinFieldDecoration: OtpPinFieldDecoration.defaultPinBoxDecoration,
        ),
        IconButton(
            onPressed: () {
              _otpPinFieldController.currentState?.clearOtp();
              _otpPinFieldController.currentState?.onFieldFocus();
            },
            icon: const Icon(Icons.refresh)),
        Text(
          '${state.aCount}A${state.bCount}B',
          style: AppTextStyles.appW400BlueGray,
        )
      ])),
    );
  }

  Widget _buildGuessList({
    required OneATwoBState state,
  }) {
    return SizedBox(
        height: size.height * 0.4,
        width: size.width / 2 - 24,
        child: state.tryCount == 0
            ? _buildEmptyList()
            : ListView.separated(
                itemBuilder: (context, index) => SizedBox(
                      height: size.height * 0.05,
                      child: _buildGuessListItemTile(
                          size: size,
                          index: index,
                          item: state.guessList[index]),
                    ),
                separatorBuilder: (context, index) => const Divider(),
                itemCount: state.guessList.length));
  }

  Widget _buildTryCountList({
    required OneATwoBState state,
  }) {
    return SizedBox(
        height: size.height * 0.4,
        width: size.width / 2 - 24,
        child: state.tryCountList.isEmpty
            ? _buildEmptyList()
            : ListView.separated(
                itemBuilder: (context, index) => SizedBox(
                      height: size.height * 0.05,
                      child: _buildTryCountItemTile(
                          size: size,
                          index: index,
                          item: state.tryCountList[index]),
                    ),
                separatorBuilder: (context, index) => const Divider(),
                itemCount: state.tryCountList.length));
  }

  Widget _buildGuessListItemTile({
    required Size size,
    required int index,
    required String item,
  }) {
    return Container(
        width: size.width,
        height: size.height * 0.23,
        decoration: BoxDecoration(
            color: index.isOdd ? AppColors.white : AppColors.neutral_100,
            borderRadius: BorderRadius.circular(5)),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(item)]));
  }

  Widget _buildTryCountItemTile({
    required Size size,
    required int index,
    required String item,
  }) {
    return Container(
        width: size.width,
        height: size.height * 0.23,
        decoration: BoxDecoration(
            color: index.isEven ? AppColors.white : AppColors.neutral_100,
            borderRadius: BorderRadius.circular(5)),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('第$index輪嘗試了$item次')]));
  }

  Widget _buildEmptyList() => const EmptyListWidget(
        isShowPic: false,
      );

  Widget _buildGuessButton({
    required OneATwoBNotifier notifier,
    required OneATwoBState state,
  }) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 16),
        child: CommonButton.medium(
            text: L10n.tr.common_ok,
            onPressed: () {
              List<String>? codeList =
                  _otpPinFieldController.currentState?.pinsInputed;

              if (codeList == null ||
                  _otpPinFieldController
                      .currentState!.pinsInputed.first.isEmpty) {
                return;
              }

              if (isCorrect(codeList: codeList, state: state)) {
                notifier.updateTryCountList(tryCount: state.tryCount);
                ToastUtils.showCustomDialog(_buildCorrectDialog());
                _otpPinFieldController.currentState?.clearOtp();
                _otpPinFieldController.currentState?.onFieldFocus();
                return;
              }
              // 計算A
              calculateACount(
                  codeList: codeList, state: state, notifier: notifier);
              // 計算B
              calculateBCount(
                  codeList: codeList, state: state, notifier: notifier);
              notifier.addToGuessList(code: codeList);

              _otpPinFieldController.currentState?.clearOtp();
              _otpPinFieldController.currentState?.onFieldFocus();
            }));
  }

  bool isCorrect({
    required List codeList,
    required OneATwoBState state,
  }) {
    return (codeList.join() == state.radomAnswer.join());
  }

  void calculateACount({
    required List codeList,
    required OneATwoBState state,
    required OneATwoBNotifier notifier,
  }) {
    int aCount = 0;

    for (int index = 0; index < codeList.length; index++) {
      if (codeList[index] == state.radomAnswer[index]) {
        aCount++;
      }
    }

    notifier.updateACount(aCount);
  }

  void calculateBCount({
    required List codeList,
    required OneATwoBState state,
    required OneATwoBNotifier notifier,
  }) {
    int bCount = 0;

    for (int index = 0; index < codeList.length; index++) {
      if (state.radomAnswer.contains(codeList[index]) &&
          (codeList[index] != state.radomAnswer[index])) {
        bCount++;
      }
    }

    notifier.updateBCount(bCount);
  }

  Widget _buildCorrectDialog() {
    return IconDialog.completed(
      message: '恭喜答對！！',
      onConfirm: () => appRouter.pop(),
      isHideCancel: true,
    );
  }
}
