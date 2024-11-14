// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_query_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PageQueryDto _$PageQueryDtoFromJson(Map<String, dynamic> json) {
  return _PageQueryDto.fromJson(json);
}

/// @nodoc
mixin _$PageQueryDto {
  @JsonKey(name: 'page_index')
  int get pageIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_size')
  int get pageSize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageQueryDtoCopyWith<PageQueryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageQueryDtoCopyWith<$Res> {
  factory $PageQueryDtoCopyWith(
          PageQueryDto value, $Res Function(PageQueryDto) then) =
      _$PageQueryDtoCopyWithImpl<$Res, PageQueryDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'page_index') int pageIndex,
      @JsonKey(name: 'page_size') int pageSize});
}

/// @nodoc
class _$PageQueryDtoCopyWithImpl<$Res, $Val extends PageQueryDto>
    implements $PageQueryDtoCopyWith<$Res> {
  _$PageQueryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageIndex = null,
    Object? pageSize = null,
  }) {
    return _then(_value.copyWith(
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageQueryDtoImplCopyWith<$Res>
    implements $PageQueryDtoCopyWith<$Res> {
  factory _$$PageQueryDtoImplCopyWith(
          _$PageQueryDtoImpl value, $Res Function(_$PageQueryDtoImpl) then) =
      __$$PageQueryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'page_index') int pageIndex,
      @JsonKey(name: 'page_size') int pageSize});
}

/// @nodoc
class __$$PageQueryDtoImplCopyWithImpl<$Res>
    extends _$PageQueryDtoCopyWithImpl<$Res, _$PageQueryDtoImpl>
    implements _$$PageQueryDtoImplCopyWith<$Res> {
  __$$PageQueryDtoImplCopyWithImpl(
      _$PageQueryDtoImpl _value, $Res Function(_$PageQueryDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageIndex = null,
    Object? pageSize = null,
  }) {
    return _then(_$PageQueryDtoImpl(
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageQueryDtoImpl implements _PageQueryDto {
  _$PageQueryDtoImpl(
      {@JsonKey(name: 'page_index') required this.pageIndex,
      @JsonKey(name: 'page_size') required this.pageSize});

  factory _$PageQueryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageQueryDtoImplFromJson(json);

  @override
  @JsonKey(name: 'page_index')
  final int pageIndex;
  @override
  @JsonKey(name: 'page_size')
  final int pageSize;

  @override
  String toString() {
    return 'PageQueryDto(pageIndex: $pageIndex, pageSize: $pageSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageQueryDtoImpl &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pageIndex, pageSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageQueryDtoImplCopyWith<_$PageQueryDtoImpl> get copyWith =>
      __$$PageQueryDtoImplCopyWithImpl<_$PageQueryDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageQueryDtoImplToJson(
      this,
    );
  }
}

abstract class _PageQueryDto implements PageQueryDto {
  factory _PageQueryDto(
          {@JsonKey(name: 'page_index') required final int pageIndex,
          @JsonKey(name: 'page_size') required final int pageSize}) =
      _$PageQueryDtoImpl;

  factory _PageQueryDto.fromJson(Map<String, dynamic> json) =
      _$PageQueryDtoImpl.fromJson;

  @override
  @JsonKey(name: 'page_index')
  int get pageIndex;
  @override
  @JsonKey(name: 'page_size')
  int get pageSize;
  @override
  @JsonKey(ignore: true)
  _$$PageQueryDtoImplCopyWith<_$PageQueryDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
