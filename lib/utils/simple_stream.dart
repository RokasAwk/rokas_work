import 'dart:async';

class SimpleStream<T> {
  final StreamController<T> _streamController = StreamController<T>();
  late final Stream<T> stream;
  final bool isBroadcastStream;
  SimpleStream({
    required this.isBroadcastStream,
  }) {
    if (isBroadcastStream) {
      stream = _streamController.stream.asBroadcastStream();
    } else {
      stream = _streamController.stream;
    }
  }

  Sink<T> get _sink => _streamController.sink;

  T? _currentValue;

  T? get current => _currentValue;

  void update(T value) {
    _currentValue = value;
    _sink.add(value);
  }

  void close() {
    _streamController.close();
  }
}
