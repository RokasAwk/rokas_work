// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_36_hours_weather_parameter_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Fetch36HoursWeatherParameterResponseDto
    _$Fetch36HoursWeatherParameterResponseDtoFromJson(
        Map<String, dynamic> json) {
  return _Fetch36HoursWeatherParameterResponseDto.fromJson(json);
}

/// @nodoc
mixin _$Fetch36HoursWeatherParameterResponseDto {
  String? get parameterName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Fetch36HoursWeatherParameterResponseDtoCopyWith<
          Fetch36HoursWeatherParameterResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Fetch36HoursWeatherParameterResponseDtoCopyWith<$Res> {
  factory $Fetch36HoursWeatherParameterResponseDtoCopyWith(
          Fetch36HoursWeatherParameterResponseDto value,
          $Res Function(Fetch36HoursWeatherParameterResponseDto) then) =
      _$Fetch36HoursWeatherParameterResponseDtoCopyWithImpl<$Res,
          Fetch36HoursWeatherParameterResponseDto>;
  @useResult
  $Res call({String? parameterName});
}

/// @nodoc
class _$Fetch36HoursWeatherParameterResponseDtoCopyWithImpl<$Res,
        $Val extends Fetch36HoursWeatherParameterResponseDto>
    implements $Fetch36HoursWeatherParameterResponseDtoCopyWith<$Res> {
  _$Fetch36HoursWeatherParameterResponseDtoCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parameterName = freezed,
  }) {
    return _then(_value.copyWith(
      parameterName: freezed == parameterName
          ? _value.parameterName
          : parameterName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Fetch36HoursWeatherParameterResponseDtoImplCopyWith<$Res>
    implements $Fetch36HoursWeatherParameterResponseDtoCopyWith<$Res> {
  factory _$$Fetch36HoursWeatherParameterResponseDtoImplCopyWith(
          _$Fetch36HoursWeatherParameterResponseDtoImpl value,
          $Res Function(_$Fetch36HoursWeatherParameterResponseDtoImpl) then) =
      __$$Fetch36HoursWeatherParameterResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? parameterName});
}

/// @nodoc
class __$$Fetch36HoursWeatherParameterResponseDtoImplCopyWithImpl<$Res>
    extends _$Fetch36HoursWeatherParameterResponseDtoCopyWithImpl<$Res,
        _$Fetch36HoursWeatherParameterResponseDtoImpl>
    implements _$$Fetch36HoursWeatherParameterResponseDtoImplCopyWith<$Res> {
  __$$Fetch36HoursWeatherParameterResponseDtoImplCopyWithImpl(
      _$Fetch36HoursWeatherParameterResponseDtoImpl _value,
      $Res Function(_$Fetch36HoursWeatherParameterResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parameterName = freezed,
  }) {
    return _then(_$Fetch36HoursWeatherParameterResponseDtoImpl(
      parameterName: freezed == parameterName
          ? _value.parameterName
          : parameterName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Fetch36HoursWeatherParameterResponseDtoImpl
    implements _Fetch36HoursWeatherParameterResponseDto {
  _$Fetch36HoursWeatherParameterResponseDtoImpl({this.parameterName});

  factory _$Fetch36HoursWeatherParameterResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$Fetch36HoursWeatherParameterResponseDtoImplFromJson(json);

  @override
  final String? parameterName;

  @override
  String toString() {
    return 'Fetch36HoursWeatherParameterResponseDto(parameterName: $parameterName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Fetch36HoursWeatherParameterResponseDtoImpl &&
            (identical(other.parameterName, parameterName) ||
                other.parameterName == parameterName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, parameterName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Fetch36HoursWeatherParameterResponseDtoImplCopyWith<
          _$Fetch36HoursWeatherParameterResponseDtoImpl>
      get copyWith =>
          __$$Fetch36HoursWeatherParameterResponseDtoImplCopyWithImpl<
              _$Fetch36HoursWeatherParameterResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Fetch36HoursWeatherParameterResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _Fetch36HoursWeatherParameterResponseDto
    implements Fetch36HoursWeatherParameterResponseDto {
  factory _Fetch36HoursWeatherParameterResponseDto(
          {final String? parameterName}) =
      _$Fetch36HoursWeatherParameterResponseDtoImpl;

  factory _Fetch36HoursWeatherParameterResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$Fetch36HoursWeatherParameterResponseDtoImpl.fromJson;

  @override
  String? get parameterName;
  @override
  @JsonKey(ignore: true)
  _$$Fetch36HoursWeatherParameterResponseDtoImplCopyWith<
          _$Fetch36HoursWeatherParameterResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
