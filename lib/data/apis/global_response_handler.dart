import '../../domain/usecase/common/server_error.dart';

class ServerErrorFactoryImpl implements ServerErrorFactory {
  ServerErrorFactoryImpl();

  @override
  ServerError create(String message) {
    return ServerErrorImpl.create(message);
  }

  @override
  ServerError generalCommonExceptionHandler(dynamic e) {
    if (e is ServerError) return e;

    String errorMsg = 'System error, please contact customer service. (-1)';

    return ServerErrorImpl(
      message: errorMsg,
    );
  }
}

class ServerErrorImpl extends ServerError {
  @override
  final String message;

  ServerErrorImpl({
    required this.message,
  });

  factory ServerErrorImpl.create(String message) {
    return ServerErrorImpl(
      message: message,
    );
  }
}
