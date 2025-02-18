import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rokas_work/l10n/l10n.dart';
import 'package:rokas_work/presentation/pages/widgets/primary_button.dart';
import 'package:rokas_work/presentation/theme/app_text_styles.dart';

import '../../di_providers/di_provider.dart';
import '../widgets/form_field_with_title.dart';
import 'login_notifier.dart';
import 'login_state.dart';

@RoutePage()
class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({
    super.key,
  });

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  var size;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
    LoginState state = ref.watch(loginStateNotifierProvider);
    LoginNotifier notifier = ref.read(loginStateNotifierProvider.notifier);

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
    required LoginState state,
    required LoginNotifier notifier,
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
                    TextButton(
                        onPressed: () => notifier.goToRegisterPage(),
                        child: Text(
                          L10n.tr.page_login_have_not_register,
                          style: AppTextStyles.appW600N300.copyWith(
                              decoration: TextDecoration.underline,
                              decorationStyle: TextDecorationStyle.dotted),
                        )),
                  ],
                ),
                const SizedBox(height: 32),
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
          L10n.tr.page_login_title,
          style: AppTextStyles.cnxW600PrimaryeXL,
        ),
        Text(
          L10n.tr.page_login_subtitle,
          style: AppTextStyles.appW400Primary,
        ),
      ],
    );
  }

  Widget _buildLoginButton({
    required LoginNotifier notifier,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  }) {
    return PrimaryButton(
        title: L10n.tr.page_login_button,
        onPressed: () => notifier.loginUser(
              email: emailController.text,
              password: passwordController.text,
            ));
  }
}
