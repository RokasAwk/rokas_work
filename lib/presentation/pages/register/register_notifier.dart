import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rokas_work/l10n/l10n.dart';
import 'package:rokas_work/presentation/pages/widgets/icon_dialog.dart';
import 'package:rokas_work/utils/toast_utils.dart';

import '../../routers/router.dart';
import 'register_state.dart';

abstract class RegisterNotifier extends StateNotifier<RegisterState> {
  RegisterNotifier(super.state);

  void createUser({required String email, required String password});
}

class RegisterNotifierImpl extends RegisterNotifier {
  final AppRouter appRouter;

  RegisterNotifierImpl({
    required this.appRouter,
  }) : super(RegisterState.init());

  @override
  void createUser({required String email, required String password}) async {
    try {
      UserCredential credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      state = state.copyWith(userCredential: credential);
      ToastUtils.showToast(L10n.tr.common_success);
      appRouter.pop();
    } on FirebaseAuthException catch (e) {
      ToastUtils.showCustomDialog(IconDialog.failure(
          message: e.code, onConfirm: () => appRouter.pop()));
    }
  }
}
