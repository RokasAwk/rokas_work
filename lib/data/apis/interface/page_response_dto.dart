import 'package:freezed_annotation/freezed_annotation.dart';

import 'page_dto.dart';

part 'page_response_dto.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class PageResponseDto<T> {
  PageResponseDto(
    this.list,
    this.page,
  );

  final List<T>? list;
  final PageDto? page;

  factory PageResponseDto.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$PageResponseDtoFromJson(json, fromJsonT);
}
