import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../routers/router.dart';
import 'login_state.dart';

abstract class LoginNotifier extends StateNotifier<LoginState> {
  LoginNotifier(super.state);

  void goToRegisterPage();
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
}
