// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Status<T> _$StatusFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    Status<T>(
      (json['code'] as num).toInt(),
      json['messages'] as String,
      fromJsonT(json['error']),
    );

Map<String, dynamic> _$StatusToJson<T>(
  Status<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'code': instance.code,
      'messages': instance.messages,
      'error': toJsonT(instance.error),
    };
