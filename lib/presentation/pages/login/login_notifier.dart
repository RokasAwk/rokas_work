import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rokas_work/domain/usecase/login/login_usecase.dart';
import 'package:rokas_work/domain/value_object/credential.dart';
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
  final LoginUseCase loginUseCase;

  LoginNotifierImpl({
    required this.appRouter,
    required this.loginUseCase,
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
      final result = await loginUseCase.execute(Credential(
          uid: credential.user!.uid,
          userName: credential.user?.displayName ?? '',
          emailAccount: email));
      result.when(success: (credential) async {
        {
          ToastUtils.showToast(L10n.tr.common_success);
          appRouter.pop();
        }
      }, error: (error) {
        print(error);
      });
    } on FirebaseAuthException catch (e) {
      ToastUtils.showCustomDialog(IconDialog.failure(
          message: e.code, onConfirm: () => appRouter.pop()));
    }
  }
}
