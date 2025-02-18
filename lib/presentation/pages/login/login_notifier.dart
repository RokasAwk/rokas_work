import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rokas_work/presentation/utils/share_preferance_util.dart';

import '../../../l10n/l10n.dart';
import '../../../utils/toast_utils.dart';
import '../../routers/router.dart';
import '../widgets/icon_dialog.dart';
import 'login_state.dart';

abstract class LoginNotifier extends StateNotifier<LoginState> {
  LoginNotifier(super.state);

  void goToRegisterPage();
  void loginUser({
    required String email,
    required String password,
  });
}

class LoginNotifierImpl extends LoginNotifier {
  final AppRouter appRouter;

  LoginNotifierImpl({
    required this.appRouter,
  }) : super(LoginState.init());

  @override
  void goToRegisterPage() {
    appRouter.push(const RegisterRoute());
  }

  @override
  void loginUser({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      ToastUtils.showToast(L10n.tr.common_success);
      appRouter.pop();
    } on FirebaseAuthException catch (e) {
      ToastUtils.showCustomDialog(IconDialog.failure(
          message: e.code, onConfirm: () => appRouter.pop()));
    }
  }
}
