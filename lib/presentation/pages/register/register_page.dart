import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rokas_work/l10n/l10n.dart';
import 'package:rokas_work/presentation/pages/widgets/primary_button.dart';
import 'package:rokas_work/presentation/theme/app_colors.dart';
import 'package:rokas_work/presentation/theme/app_text_styles.dart';

import '../../di_providers/di_provider.dart';
import '../widgets/developed_by_widget.dart';
import '../widgets/focus_popup_tips.dart';
import '../widgets/form_field_with_title.dart';
import 'register_notifier.dart';
import 'register_state.dart';

@RoutePage()
class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({
    super.key,
  });

  @override
  ConsumerState<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> {
  var size;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _createUserHintFocusNode = FocusNode();
  final _createUserHintFocusPopupTipsKey = GlobalKey<FocusPopupTipsState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    RegisterState state = ref.watch(registerStateNotifierProvider);
    RegisterNotifier notifier =
        ref.read(registerStateNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: _buildBody(
        state: state,
        notifier: notifier,
        emailController: emailController,
        passwordController: passwordController,
      ),
    );
  }

  Widget _buildBody({
    required RegisterState state,
    required RegisterNotifier notifier,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  }) {
    return SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                loginDescrpition(),
                const SizedBox(height: 32),
                FormFieldWithTitle(
                  titleText: L10n.tr.common_account_title,
                  hintText: L10n.tr.common_account_title_hint,
                  controller: emailController,
                  maxLength: 50,
                ),
                FormFieldWithTitle(
                  titleText: L10n.tr.common_password,
                  hintText: L10n.tr.common_password_hint,
                  controller: passwordController,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FocusPopupTips(
                        key: _createUserHintFocusPopupTipsKey,
                        focusNode: _createUserHintFocusNode,
                        tip: const Text(
                          '並沒有',
                          style: AppTextStyles.appW400WhiteMedium,
                        ),
                        child: TextButton.icon(
                            focusNode: _createUserHintFocusNode,
                            icon: const FaIcon(
                              FontAwesomeIcons.circleExclamation,
                              size: 18,
                              color: AppColors.blueGray,
                            ),
                            onPressed: () {
                              _createUserHintFocusNode.requestFocus();
                              Future.delayed(const Duration(seconds: 3), () {
                                _createUserHintFocusNode.unfocus();
                              });
                            },
                            label: Text(
                              L10n.tr.page_register_become_user,
                              style: AppTextStyles.appW600N300.copyWith(
                                  decoration: TextDecoration.underline,
                                  decorationStyle: TextDecorationStyle.dotted),
                            ))),
                  ],
                ),
                const SizedBox(height: 16),
                _buildLoginButton(
                  notifier: notifier,
                  emailController: emailController,
                  passwordController: passwordController,
                ),
              ],
            )));
  }

  Widget loginDescrpition() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          L10n.tr.page_register_title,
          style: AppTextStyles.cnxW600PrimaryeXL,
        ),
        Text(
          L10n.tr.page_register_subtitle,
          style: AppTextStyles.appW400Primary,
        ),
      ],
    );
  }

  Widget _buildLoginButton({
    required RegisterNotifier notifier,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  }) {
    return PrimaryButton(
        title: L10n.tr.page_register_button,
        onPressed: () => notifier.createUser(
              email: emailController.text,
              password: passwordController.text,
            ));
  }
}
