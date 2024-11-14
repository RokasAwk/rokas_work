import 'dart:async';

import 'result.dart';

/// P: Parameter type
/// R: Response type
/// E: Exception Type
abstract class UseCase<P, R, E extends Exception> {
  FutureOr<Result<R, E>> execute(P param);
}

/// The use case parameter(model) should named with two format by CQRS:
/// Query: for get data (read data)
///   ex: GetFooQuery
/// Command: for create/update/delete (write data)
///   ex: CreateMemberCommand, EditMemberCommand
