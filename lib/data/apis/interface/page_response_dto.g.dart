// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PageResponseDto<T> _$PageResponseDtoFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    PageResponseDto<T>(
      (json['list'] as List<dynamic>?)?.map(fromJsonT).toList(),
      json['page'] == null
          ? null
          : PageDto.fromJson(json['page'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PageResponseDtoToJson<T>(
  PageResponseDto<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'list': instance.list?.map(toJsonT).toList(),
      'page': instance.page,
    };
