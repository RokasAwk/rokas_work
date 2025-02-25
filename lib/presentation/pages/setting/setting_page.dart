import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rokas_work/presentation/pages/widgets/primary_button.dart';

import '../../di_providers/di_provider.dart';
import 'setting_notifier.dart';
import 'setting_state.dart';

@RoutePage()
class SettingPage extends ConsumerStatefulWidget {
  const SettingPage({
    super.key,
  });

  @override
  ConsumerState<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends ConsumerState<SettingPage> {
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
    SettingState state = ref.watch(settingStateNotifierProvider);
    SettingNotifier notifier = ref.read(settingStateNotifierProvider.notifier);

    return _buildBody(
      state: state,
      notifier: notifier,
      emailController: emailController,
      passwordController: passwordController,
    );
  }

  Widget _buildBody({
    required SettingState state,
    required SettingNotifier notifier,
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
              children: [
                PrimaryButton(
                  title: '登出',
                  onPressed: () {},
                ),
              ],
            )));
  }
}
