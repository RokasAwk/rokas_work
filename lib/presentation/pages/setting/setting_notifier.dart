import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rokas_work/domain/usecase/logout/logout_usecase.dart';
import 'package:rokas_work/domain/value_object/credential.dart';
import 'package:rokas_work/l10n/l10n.dart';
import 'package:rokas_work/presentation/pages/widgets/icon_dialog.dart';
import 'package:rokas_work/utils/toast_utils.dart';
import '../../routers/router.dart';
import 'setting_state.dart';

abstract class SettingNotifier extends StateNotifier<SettingState> {
  SettingNotifier(super.state);

  void logoutUser();
}

class SettingNotifierImpl extends SettingNotifier {
  final AppRouter appRouter;
  final LogoutUseCase logoutUseCase;

  SettingNotifierImpl({
    required this.appRouter,
    required this.logoutUseCase,
  }) : super(SettingState.init());

  @override
  void logoutUser() async {
    try {
      await FirebaseAuth.instance.signOut();

      ToastUtils.showToast(L10n.tr.common_success);
      appRouter.pop();
    } on FirebaseAuthException catch (e) {
      ToastUtils.showCustomDialog(IconDialog.failure(
          message: e.code, onConfirm: () => appRouter.pop()));
    }
  }
}
