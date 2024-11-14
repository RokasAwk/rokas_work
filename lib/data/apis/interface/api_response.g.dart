// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponse<T, E> _$ApiResponseFromJson<T, E>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
  E Function(Object? json) fromJsonE,
) =>
    ApiResponse<T, E>(
      fromJsonE(json['status']),
      fromJsonT(json['data']),
    );

Map<String, dynamic> _$ApiResponseToJson<T, E>(
  ApiResponse<T, E> instance,
  Object? Function(T value) toJsonT,
  Object? Function(E value) toJsonE,
) =>
    <String, dynamic>{
      'status': toJsonE(instance.status),
      'data': toJsonT(instance.data),
    };
