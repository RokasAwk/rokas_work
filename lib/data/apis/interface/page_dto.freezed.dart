// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PageDto _$PageDtoFromJson(Map<String, dynamic> json) {
  return _PageDto.fromJson(json);
}

/// @nodoc
mixin _$PageDto {
  int get total => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageDtoCopyWith<PageDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageDtoCopyWith<$Res> {
  factory $PageDtoCopyWith(PageDto value, $Res Function(PageDto) then) =
      _$PageDtoCopyWithImpl<$Res, PageDto>;
  @useResult
  $Res call({int total, int index, int size});
}

/// @nodoc
class _$PageDtoCopyWithImpl<$Res, $Val extends PageDto>
    implements $PageDtoCopyWith<$Res> {
  _$PageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? index = null,
    Object? size = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageDtoImplCopyWith<$Res> implements $PageDtoCopyWith<$Res> {
  factory _$$PageDtoImplCopyWith(
          _$PageDtoImpl value, $Res Function(_$PageDtoImpl) then) =
      __$$PageDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, int index, int size});
}

/// @nodoc
class __$$PageDtoImplCopyWithImpl<$Res>
    extends _$PageDtoCopyWithImpl<$Res, _$PageDtoImpl>
    implements _$$PageDtoImplCopyWith<$Res> {
  __$$PageDtoImplCopyWithImpl(
      _$PageDtoImpl _value, $Res Function(_$PageDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? index = null,
    Object? size = null,
  }) {
    return _then(_$PageDtoImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageDtoImpl implements _PageDto {
  _$PageDtoImpl({required this.total, required this.index, required this.size});

  factory _$PageDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageDtoImplFromJson(json);

  @override
  final int total;
  @override
  final int index;
  @override
  final int size;

  @override
  String toString() {
    return 'PageDto(total: $total, index: $index, size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageDtoImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, index, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageDtoImplCopyWith<_$PageDtoImpl> get copyWith =>
      __$$PageDtoImplCopyWithImpl<_$PageDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageDtoImplToJson(
      this,
    );
  }
}

abstract class _PageDto implements PageDto {
  factory _PageDto(
      {required final int total,
      required final int index,
      required final int size}) = _$PageDtoImpl;

  factory _PageDto.fromJson(Map<String, dynamic> json) = _$PageDtoImpl.fromJson;

  @override
  int get total;
  @override
  int get index;
  @override
  int get size;
  @override
  @JsonKey(ignore: true)
  _$$PageDtoImplCopyWith<_$PageDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
