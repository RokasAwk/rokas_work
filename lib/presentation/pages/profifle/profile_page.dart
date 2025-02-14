import 'package:auto_route/auto_route.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rokas_work/l10n/l10n.dart';
import 'package:rokas_work/presentation/pages/widgets/developed_by_widget.dart';
import 'package:rokas_work/presentation/theme/app_colors.dart';
import 'package:rokas_work/presentation/utils/share_preferance_util.dart';
import '../../../utils/toast_utils.dart';
import '../../di_providers/di_provider.dart';
import '../../resource/assets.dart';
import '../../routers/router.dart';
import '../../theme/app_text_styles.dart';
import '../widgets/form_field_with_title.dart';
import '../widgets/icon_dialog.dart';
import 'profile_notifier.dart';

@RoutePage()
class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({
    super.key,
  });

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  var size;
  late final AppRouter appRouter;
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  void initState() {
    appRouter = ref.read(routerProvider);
    nameController.text = SharePreferenceUtil().getUserName() ?? '';
    descriptionController.text =
        SharePreferenceUtil().getUserDescription() ?? '';
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    ProfileNotifier notifier =
        ref.read(profileListStateNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text(L10n.tr.page_home_drawer_profile),
        leading: const BackButton(),
      ),
      body: _buildBody(
        notifier: notifier,
        size: size,
      ),
    );
  }

  Widget _buildBody({
    required ProfileNotifier notifier,
    required Size size,
  }) {
    return Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          IconButton(
            onPressed: () {
              ToastUtils.showCustomDialog(_buildEditProfileDialog(
                  nameController: nameController,
                  descriptionController: descriptionController));
            },
            icon: const Icon(Icons.edit),
          ),
          _buildFlipCard(),
        ]));
  }

  // 卡片
  Widget _buildFlipCard() {
    return FlipCard(
      fill: Fill
          .fillBack, // Fill the back side of the card to make in the same size as the front.
      direction: FlipDirection.HORIZONTAL, // default
      side: CardSide.FRONT, // The side to initially display.
      front: _buildFrontCard(),
      back: _buildBackCard(),
    );
  }

  // 卡片正面
  Widget _buildFrontCard() {
    return Container(
      width: size.width,
      height: size.height * 0.65,
      padding: const EdgeInsets.only(top: 36),
      decoration: BoxDecoration(
          color: AppColors.orange.withOpacity(0.5),
          borderRadius: BorderRadius.circular(15)),
      child: Center(
          child: Column(
        children: [
          CircleAvatar(
            backgroundColor: AppColors.boxShadow1,
            radius: 70,
            foregroundImage: AssetImage(Assets.appIcon),
          ),
          const SizedBox(height: 8),
          Text(
            SharePreferenceUtil().getUserName() ??
                L10n.tr.page_home_drawer_default_user_name,
            style: AppTextStyles.cnxW600PrimaryeXL,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${L10n.tr.page_home_drawer_user_exp}  ',
                style: AppTextStyles.appW600Primary,
              ),
              SizedBox(
                  width: size.width * 0.5,
                  child: const LinearProgressIndicator(
                    value: 0.33,
                    minHeight: 3,
                    color: AppColors.b_2,
                    backgroundColor: AppColors.boxShadow2,
                  )),
            ],
          ),
          Text(
            L10n.tr.page_home_drawer_default_user_level('22'),
            style: AppTextStyles.appW600Primary,
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: size.width * 0.6,
            child: Text(
              SharePreferenceUtil().getUserDescription() ??
                  L10n.tr.page_home_drawer_user_default_description,
              overflow: TextOverflow.clip,
              textAlign: TextAlign.center,
            ),
          )
        ],
      )),
    );
  }

  // 卡片背面
  Widget _buildBackCard() {
    return Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: AppColors.dividerLightGradientColors,
            )),
        child: const Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              FontAwesomeIcons.paw,
              color: AppColors.white,
              size: 100,
            ),
            DevelopedByWidget(
              textStyle: AppTextStyles.appW600White,
            )
          ],
        )));
  }

  // 編輯的彈窗
  Widget _buildEditProfileDialog({
    required TextEditingController nameController,
    required TextEditingController descriptionController,
  }) {
    return IconDialog.withBodyWidget(
        message: L10n.tr.common_edit,
        subContent: Column(
          children: [
            _buildAddCostSection(),
          ],
        ),
        onCancel: () => appRouter.pop(),
        onConfirm: () async {
          setState(() {
            SharePreferenceUtil().setUserName(nameController.text);
            SharePreferenceUtil()
                .setUserDescription(descriptionController.text);
          });
          appRouter.pop();
        });
  }

  // 輸入框區塊
  Widget _buildAddCostSection() {
    return Container(
        width: 500,
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.b_2),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          child: Column(
            children: [
              _buildFormField(
                controller: nameController,
                titleText: L10n.tr.page_home_drawer_user_name,
                hintText: L10n.tr.page_home_drawer_user_name_hint,
              ),
              const SizedBox(
                height: 16,
              ),
              _buildFormField(
                controller: descriptionController,
                titleText: L10n.tr.page_home_drawer_user_description,
                hintText: L10n.tr.page_home_drawer_user_description_hint,
                maxLength: 50,
              ),
            ],
          ),
        ));
  }

  // 文字輸入區
  Widget _buildFormField({
    required String titleText,
    required String hintText,
    required TextEditingController controller,
    int maxLength = 20,
  }) {
    return FormFieldWithTitle(
      controller: controller,
      titleText: titleText,
      hintText: hintText,
      maxLength: maxLength,
      textStyle: AppTextStyles.appW400WhiteMedium,
    );
  }
}
