// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_query_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PageQueryDtoImpl _$$PageQueryDtoImplFromJson(Map<String, dynamic> json) =>
    _$PageQueryDtoImpl(
      pageIndex: (json['page_index'] as num).toInt(),
      pageSize: (json['page_size'] as num).toInt(),
    );

Map<String, dynamic> _$$PageQueryDtoImplToJson(_$PageQueryDtoImpl instance) =>
    <String, dynamic>{
      'page_index': instance.pageIndex,
      'page_size': instance.pageSize,
    };
