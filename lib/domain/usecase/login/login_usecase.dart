import 'package:rokas_work/domain/repository/authentication_repository.dart';
import 'package:rokas_work/domain/value_object/credential.dart';

import '../../interface/result.dart';
import '../../interface/usecase.dart';

class LoginUseCase implements UseCase<Credential, Credential, Exception> {
  LoginUseCase({
    required AuthenticationRepository authenticationRepository,
  }) : _authRepo = authenticationRepository;

  final AuthenticationRepository _authRepo;

  @override
  Future<Result<Credential, Exception>> execute(
    Credential credential,
  ) async {
    var successCredential = await _authRepo.login(credential);

    return Result.success(successCredential);
  }
}
