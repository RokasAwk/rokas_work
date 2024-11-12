import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  factory RegisterState({
    UserCredential? userCredential,
  }) = _RegisterState;

  factory RegisterState.init() => RegisterState(
        userCredential: null,
      );
}
