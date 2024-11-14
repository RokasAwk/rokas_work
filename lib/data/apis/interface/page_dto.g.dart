// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PageDtoImpl _$$PageDtoImplFromJson(Map<String, dynamic> json) =>
    _$PageDtoImpl(
      total: (json['total'] as num).toInt(),
      index: (json['index'] as num).toInt(),
      size: (json['size'] as num).toInt(),
    );

Map<String, dynamic> _$$PageDtoImplToJson(_$PageDtoImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'index': instance.index,
      'size': instance.size,
    };
