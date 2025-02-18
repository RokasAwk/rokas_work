import 'package:rokas_work/domain/value_object/credential.dart';

abstract class AuthenticationRepository {
  Future<Credential?> hasAuth();
  Future<Credential> login(Credential credential);
  Future<bool> logout();
}
