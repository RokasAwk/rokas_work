import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_dto.freezed.dart';
part 'page_dto.g.dart';

@freezed
class PageDto with _$PageDto {
  factory PageDto({
    required int total,
    required int index,
    required int size,
  }) = _PageDto;

  factory PageDto.fromJson(Map<String, dynamic> json) =>
      _$PageDtoFromJson(json);
}
