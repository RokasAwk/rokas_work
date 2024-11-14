// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_week_weather_weather_element_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FetchWeekWeatherWeatherElementResponseDto
    _$FetchWeekWeatherWeatherElementResponseDtoFromJson(
        Map<String, dynamic> json) {
  return _FetchWeekWeatherWeatherElementResponseDto.fromJson(json);
}

/// @nodoc
mixin _$FetchWeekWeatherWeatherElementResponseDto {
  List<FetchWeekWeatherTimeResponseDto>? get time =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchWeekWeatherWeatherElementResponseDtoCopyWith<
          FetchWeekWeatherWeatherElementResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchWeekWeatherWeatherElementResponseDtoCopyWith<$Res> {
  factory $FetchWeekWeatherWeatherElementResponseDtoCopyWith(
          FetchWeekWeatherWeatherElementResponseDto value,
          $Res Function(FetchWeekWeatherWeatherElementResponseDto) then) =
      _$FetchWeekWeatherWeatherElementResponseDtoCopyWithImpl<$Res,
          FetchWeekWeatherWeatherElementResponseDto>;
  @useResult
  $Res call({List<FetchWeekWeatherTimeResponseDto>? time});
}

/// @nodoc
class _$FetchWeekWeatherWeatherElementResponseDtoCopyWithImpl<$Res,
        $Val extends FetchWeekWeatherWeatherElementResponseDto>
    implements $FetchWeekWeatherWeatherElementResponseDtoCopyWith<$Res> {
  _$FetchWeekWeatherWeatherElementResponseDtoCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<FetchWeekWeatherTimeResponseDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchWeekWeatherWeatherElementResponseDtoImplCopyWith<$Res>
    implements $FetchWeekWeatherWeatherElementResponseDtoCopyWith<$Res> {
  factory _$$FetchWeekWeatherWeatherElementResponseDtoImplCopyWith(
          _$FetchWeekWeatherWeatherElementResponseDtoImpl value,
          $Res Function(_$FetchWeekWeatherWeatherElementResponseDtoImpl) then) =
      __$$FetchWeekWeatherWeatherElementResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FetchWeekWeatherTimeResponseDto>? time});
}

/// @nodoc
class __$$FetchWeekWeatherWeatherElementResponseDtoImplCopyWithImpl<$Res>
    extends _$FetchWeekWeatherWeatherElementResponseDtoCopyWithImpl<$Res,
        _$FetchWeekWeatherWeatherElementResponseDtoImpl>
    implements _$$FetchWeekWeatherWeatherElementResponseDtoImplCopyWith<$Res> {
  __$$FetchWeekWeatherWeatherElementResponseDtoImplCopyWithImpl(
      _$FetchWeekWeatherWeatherElementResponseDtoImpl _value,
      $Res Function(_$FetchWeekWeatherWeatherElementResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
  }) {
    return _then(_$FetchWeekWeatherWeatherElementResponseDtoImpl(
      time: freezed == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<FetchWeekWeatherTimeResponseDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchWeekWeatherWeatherElementResponseDtoImpl
    implements _FetchWeekWeatherWeatherElementResponseDto {
  _$FetchWeekWeatherWeatherElementResponseDtoImpl(
      {final List<FetchWeekWeatherTimeResponseDto>? time})
      : _time = time;

  factory _$FetchWeekWeatherWeatherElementResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchWeekWeatherWeatherElementResponseDtoImplFromJson(json);

  final List<FetchWeekWeatherTimeResponseDto>? _time;
  @override
  List<FetchWeekWeatherTimeResponseDto>? get time {
    final value = _time;
    if (value == null) return null;
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FetchWeekWeatherWeatherElementResponseDto(time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchWeekWeatherWeatherElementResponseDtoImpl &&
            const DeepCollectionEquality().equals(other._time, _time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_time));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchWeekWeatherWeatherElementResponseDtoImplCopyWith<
          _$FetchWeekWeatherWeatherElementResponseDtoImpl>
      get copyWith =>
          __$$FetchWeekWeatherWeatherElementResponseDtoImplCopyWithImpl<
                  _$FetchWeekWeatherWeatherElementResponseDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchWeekWeatherWeatherElementResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _FetchWeekWeatherWeatherElementResponseDto
    implements FetchWeekWeatherWeatherElementResponseDto {
  factory _FetchWeekWeatherWeatherElementResponseDto(
          {final List<FetchWeekWeatherTimeResponseDto>? time}) =
      _$FetchWeekWeatherWeatherElementResponseDtoImpl;

  factory _FetchWeekWeatherWeatherElementResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$FetchWeekWeatherWeatherElementResponseDtoImpl.fromJson;

  @override
  List<FetchWeekWeatherTimeResponseDto>? get time;
  @override
  @JsonKey(ignore: true)
  _$$FetchWeekWeatherWeatherElementResponseDtoImplCopyWith<
          _$FetchWeekWeatherWeatherElementResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
