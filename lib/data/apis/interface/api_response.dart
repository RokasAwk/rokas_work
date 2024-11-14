import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.g.dart';

// Refer to: https://github.com/google/json_serializable.dart/blob/master/example/lib/tuple_example.dart
@JsonSerializable(genericArgumentFactories: true)
class ApiResponse<T, E> {
  ApiResponse(
    this.status,
    this.data,
  );

  final E status;
  final T data;

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
    E Function(Object? json) fromJsonE,
  ) =>
      _$ApiResponseFromJson(json, fromJsonT, fromJsonE);

  Map<String, dynamic> toJson(
    Object Function(T value) toJsonT,
    Object Function(E value) toJsonE,
  ) {
    return _$ApiResponseToJson(this, toJsonT, toJsonE);
  }
}
