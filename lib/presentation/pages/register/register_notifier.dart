import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    UserCredential credential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);

    state = state.copyWith(userCredential: credential);
  }
}
