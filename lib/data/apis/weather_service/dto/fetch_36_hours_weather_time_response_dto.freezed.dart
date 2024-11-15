// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_36_hours_weather_time_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Fetch36HoursWeatherTimeResponseDto _$Fetch36HoursWeatherTimeResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _Fetch36HoursWeatherTimeResponseDto.fromJson(json);
}

/// @nodoc
mixin _$Fetch36HoursWeatherTimeResponseDto {
  String? get startTime => throw _privateConstructorUsedError;
  String? get endTime => throw _privateConstructorUsedError;
  Fetch36HoursWeatherParameterResponseDto? get parameter =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Fetch36HoursWeatherTimeResponseDtoCopyWith<
          Fetch36HoursWeatherTimeResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Fetch36HoursWeatherTimeResponseDtoCopyWith<$Res> {
  factory $Fetch36HoursWeatherTimeResponseDtoCopyWith(
          Fetch36HoursWeatherTimeResponseDto value,
          $Res Function(Fetch36HoursWeatherTimeResponseDto) then) =
      _$Fetch36HoursWeatherTimeResponseDtoCopyWithImpl<$Res,
          Fetch36HoursWeatherTimeResponseDto>;
  @useResult
  $Res call(
      {String? startTime,
      String? endTime,
      Fetch36HoursWeatherParameterResponseDto? parameter});

  $Fetch36HoursWeatherParameterResponseDtoCopyWith<$Res>? get parameter;
}

/// @nodoc
class _$Fetch36HoursWeatherTimeResponseDtoCopyWithImpl<$Res,
        $Val extends Fetch36HoursWeatherTimeResponseDto>
    implements $Fetch36HoursWeatherTimeResponseDtoCopyWith<$Res> {
  _$Fetch36HoursWeatherTimeResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? parameter = freezed,
  }) {
    return _then(_value.copyWith(
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      parameter: freezed == parameter
          ? _value.parameter
          : parameter // ignore: cast_nullable_to_non_nullable
              as Fetch36HoursWeatherParameterResponseDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $Fetch36HoursWeatherParameterResponseDtoCopyWith<$Res>? get parameter {
    if (_value.parameter == null) {
      return null;
    }

    return $Fetch36HoursWeatherParameterResponseDtoCopyWith<$Res>(
        _value.parameter!, (value) {
      return _then(_value.copyWith(parameter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$Fetch36HoursWeatherTimeResponseDtoImplCopyWith<$Res>
    implements $Fetch36HoursWeatherTimeResponseDtoCopyWith<$Res> {
  factory _$$Fetch36HoursWeatherTimeResponseDtoImplCopyWith(
          _$Fetch36HoursWeatherTimeResponseDtoImpl value,
          $Res Function(_$Fetch36HoursWeatherTimeResponseDtoImpl) then) =
      __$$Fetch36HoursWeatherTimeResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? startTime,
      String? endTime,
      Fetch36HoursWeatherParameterResponseDto? parameter});

  @override
  $Fetch36HoursWeatherParameterResponseDtoCopyWith<$Res>? get parameter;
}

/// @nodoc
class __$$Fetch36HoursWeatherTimeResponseDtoImplCopyWithImpl<$Res>
    extends _$Fetch36HoursWeatherTimeResponseDtoCopyWithImpl<$Res,
        _$Fetch36HoursWeatherTimeResponseDtoImpl>
    implements _$$Fetch36HoursWeatherTimeResponseDtoImplCopyWith<$Res> {
  __$$Fetch36HoursWeatherTimeResponseDtoImplCopyWithImpl(
      _$Fetch36HoursWeatherTimeResponseDtoImpl _value,
      $Res Function(_$Fetch36HoursWeatherTimeResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? parameter = freezed,
  }) {
    return _then(_$Fetch36HoursWeatherTimeResponseDtoImpl(
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      parameter: freezed == parameter
          ? _value.parameter
          : parameter // ignore: cast_nullable_to_non_nullable
              as Fetch36HoursWeatherParameterResponseDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Fetch36HoursWeatherTimeResponseDtoImpl
    implements _Fetch36HoursWeatherTimeResponseDto {
  _$Fetch36HoursWeatherTimeResponseDtoImpl(
      {this.startTime, this.endTime, this.parameter});

  factory _$Fetch36HoursWeatherTimeResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$Fetch36HoursWeatherTimeResponseDtoImplFromJson(json);

  @override
  final String? startTime;
  @override
  final String? endTime;
  @override
  final Fetch36HoursWeatherParameterResponseDto? parameter;

  @override
  String toString() {
    return 'Fetch36HoursWeatherTimeResponseDto(startTime: $startTime, endTime: $endTime, parameter: $parameter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Fetch36HoursWeatherTimeResponseDtoImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.parameter, parameter) ||
                other.parameter == parameter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime, parameter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Fetch36HoursWeatherTimeResponseDtoImplCopyWith<
          _$Fetch36HoursWeatherTimeResponseDtoImpl>
      get copyWith => __$$Fetch36HoursWeatherTimeResponseDtoImplCopyWithImpl<
          _$Fetch36HoursWeatherTimeResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Fetch36HoursWeatherTimeResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _Fetch36HoursWeatherTimeResponseDto
    implements Fetch36HoursWeatherTimeResponseDto {
  factory _Fetch36HoursWeatherTimeResponseDto(
          {final String? startTime,
          final String? endTime,
          final Fetch36HoursWeatherParameterResponseDto? parameter}) =
      _$Fetch36HoursWeatherTimeResponseDtoImpl;

  factory _Fetch36HoursWeatherTimeResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$Fetch36HoursWeatherTimeResponseDtoImpl.fromJson;

  @override
  String? get startTime;
  @override
  String? get endTime;
  @override
  Fetch36HoursWeatherParameterResponseDto? get parameter;
  @override
  @JsonKey(ignore: true)
  _$$Fetch36HoursWeatherTimeResponseDtoImplCopyWith<
          _$Fetch36HoursWeatherTimeResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
