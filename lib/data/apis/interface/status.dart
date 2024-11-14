import 'package:freezed_annotation/freezed_annotation.dart';

part 'status.g.dart';

// Refer to: https://github.com/google/json_serializable.dart/blob/master/example/lib/tuple_example.dart
@JsonSerializable(genericArgumentFactories: true)
class Status<T> {
  Status(
    this.code,
    this.messages,
    this.error,
  );

  final int code;
  final String messages;
  final T error;

  factory Status.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$StatusFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(
    Object Function(T value) toJsonT,
  ) {
    return _$StatusToJson(this, toJsonT);
  }
}
