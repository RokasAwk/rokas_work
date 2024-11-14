abstract class ServerError implements Exception {
  String get message;
}

abstract class ServerErrorFactory {
  ServerError create(String message);
  ServerError generalCommonExceptionHandler(dynamic e);
}
