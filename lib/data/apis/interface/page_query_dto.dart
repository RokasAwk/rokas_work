import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_query_dto.freezed.dart';
part 'page_query_dto.g.dart';

@freezed
class PageQueryDto with _$PageQueryDto {
  factory PageQueryDto({
    @JsonKey(name: 'page_index') required int pageIndex,
    @JsonKey(name: 'page_size') required int pageSize,
  }) = _PageQueryDto;

  factory PageQueryDto.fromJson(Map<String, dynamic> json) =>
      _$PageQueryDtoFromJson(json);
}
