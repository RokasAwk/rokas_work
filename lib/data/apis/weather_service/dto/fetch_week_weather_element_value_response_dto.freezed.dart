// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_week_weather_element_value_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FetchWeekWeatherelEmentValueResponseDto
    _$FetchWeekWeatherelEmentValueResponseDtoFromJson(
        Map<String, dynamic> json) {
  return _FetchWeekWeatherelEmentValueResponseDto.fromJson(json);
}

/// @nodoc
mixin _$FetchWeekWeatherelEmentValueResponseDto {
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchWeekWeatherelEmentValueResponseDtoCopyWith<
          FetchWeekWeatherelEmentValueResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchWeekWeatherelEmentValueResponseDtoCopyWith<$Res> {
  factory $FetchWeekWeatherelEmentValueResponseDtoCopyWith(
          FetchWeekWeatherelEmentValueResponseDto value,
          $Res Function(FetchWeekWeatherelEmentValueResponseDto) then) =
      _$FetchWeekWeatherelEmentValueResponseDtoCopyWithImpl<$Res,
          FetchWeekWeatherelEmentValueResponseDto>;
  @useResult
  $Res call({String? value});
}

/// @nodoc
class _$FetchWeekWeatherelEmentValueResponseDtoCopyWithImpl<$Res,
        $Val extends FetchWeekWeatherelEmentValueResponseDto>
    implements $FetchWeekWeatherelEmentValueResponseDtoCopyWith<$Res> {
  _$FetchWeekWeatherelEmentValueResponseDtoCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchWeekWeatherelEmentValueResponseDtoImplCopyWith<$Res>
    implements $FetchWeekWeatherelEmentValueResponseDtoCopyWith<$Res> {
  factory _$$FetchWeekWeatherelEmentValueResponseDtoImplCopyWith(
          _$FetchWeekWeatherelEmentValueResponseDtoImpl value,
          $Res Function(_$FetchWeekWeatherelEmentValueResponseDtoImpl) then) =
      __$$FetchWeekWeatherelEmentValueResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? value});
}

/// @nodoc
class __$$FetchWeekWeatherelEmentValueResponseDtoImplCopyWithImpl<$Res>
    extends _$FetchWeekWeatherelEmentValueResponseDtoCopyWithImpl<$Res,
        _$FetchWeekWeatherelEmentValueResponseDtoImpl>
    implements _$$FetchWeekWeatherelEmentValueResponseDtoImplCopyWith<$Res> {
  __$$FetchWeekWeatherelEmentValueResponseDtoImplCopyWithImpl(
      _$FetchWeekWeatherelEmentValueResponseDtoImpl _value,
      $Res Function(_$FetchWeekWeatherelEmentValueResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$FetchWeekWeatherelEmentValueResponseDtoImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchWeekWeatherelEmentValueResponseDtoImpl
    implements _FetchWeekWeatherelEmentValueResponseDto {
  _$FetchWeekWeatherelEmentValueResponseDtoImpl({this.value});

  factory _$FetchWeekWeatherelEmentValueResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchWeekWeatherelEmentValueResponseDtoImplFromJson(json);

  @override
  final String? value;

  @override
  String toString() {
    return 'FetchWeekWeatherelEmentValueResponseDto(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchWeekWeatherelEmentValueResponseDtoImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchWeekWeatherelEmentValueResponseDtoImplCopyWith<
          _$FetchWeekWeatherelEmentValueResponseDtoImpl>
      get copyWith =>
          __$$FetchWeekWeatherelEmentValueResponseDtoImplCopyWithImpl<
              _$FetchWeekWeatherelEmentValueResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchWeekWeatherelEmentValueResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _FetchWeekWeatherelEmentValueResponseDto
    implements FetchWeekWeatherelEmentValueResponseDto {
  factory _FetchWeekWeatherelEmentValueResponseDto({final String? value}) =
      _$FetchWeekWeatherelEmentValueResponseDtoImpl;

  factory _FetchWeekWeatherelEmentValueResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$FetchWeekWeatherelEmentValueResponseDtoImpl.fromJson;

  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$FetchWeekWeatherelEmentValueResponseDtoImplCopyWith<
          _$FetchWeekWeatherelEmentValueResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
