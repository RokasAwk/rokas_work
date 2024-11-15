// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_36_hours_weather_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Fetch36HoursWeatherResponseDto _$Fetch36HoursWeatherResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _Fetch36HoursWeatherResponseDto.fromJson(json);
}

/// @nodoc
mixin _$Fetch36HoursWeatherResponseDto {
  Fetch36HoursWeatherRecordsResponseDto? get records =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Fetch36HoursWeatherResponseDtoCopyWith<Fetch36HoursWeatherResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Fetch36HoursWeatherResponseDtoCopyWith<$Res> {
  factory $Fetch36HoursWeatherResponseDtoCopyWith(
          Fetch36HoursWeatherResponseDto value,
          $Res Function(Fetch36HoursWeatherResponseDto) then) =
      _$Fetch36HoursWeatherResponseDtoCopyWithImpl<$Res,
          Fetch36HoursWeatherResponseDto>;
  @useResult
  $Res call({Fetch36HoursWeatherRecordsResponseDto? records});

  $Fetch36HoursWeatherRecordsResponseDtoCopyWith<$Res>? get records;
}

/// @nodoc
class _$Fetch36HoursWeatherResponseDtoCopyWithImpl<$Res,
        $Val extends Fetch36HoursWeatherResponseDto>
    implements $Fetch36HoursWeatherResponseDtoCopyWith<$Res> {
  _$Fetch36HoursWeatherResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = freezed,
  }) {
    return _then(_value.copyWith(
      records: freezed == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as Fetch36HoursWeatherRecordsResponseDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $Fetch36HoursWeatherRecordsResponseDtoCopyWith<$Res>? get records {
    if (_value.records == null) {
      return null;
    }

    return $Fetch36HoursWeatherRecordsResponseDtoCopyWith<$Res>(_value.records!,
        (value) {
      return _then(_value.copyWith(records: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$Fetch36HoursWeatherResponseDtoImplCopyWith<$Res>
    implements $Fetch36HoursWeatherResponseDtoCopyWith<$Res> {
  factory _$$Fetch36HoursWeatherResponseDtoImplCopyWith(
          _$Fetch36HoursWeatherResponseDtoImpl value,
          $Res Function(_$Fetch36HoursWeatherResponseDtoImpl) then) =
      __$$Fetch36HoursWeatherResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fetch36HoursWeatherRecordsResponseDto? records});

  @override
  $Fetch36HoursWeatherRecordsResponseDtoCopyWith<$Res>? get records;
}

/// @nodoc
class __$$Fetch36HoursWeatherResponseDtoImplCopyWithImpl<$Res>
    extends _$Fetch36HoursWeatherResponseDtoCopyWithImpl<$Res,
        _$Fetch36HoursWeatherResponseDtoImpl>
    implements _$$Fetch36HoursWeatherResponseDtoImplCopyWith<$Res> {
  __$$Fetch36HoursWeatherResponseDtoImplCopyWithImpl(
      _$Fetch36HoursWeatherResponseDtoImpl _value,
      $Res Function(_$Fetch36HoursWeatherResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = freezed,
  }) {
    return _then(_$Fetch36HoursWeatherResponseDtoImpl(
      records: freezed == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as Fetch36HoursWeatherRecordsResponseDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Fetch36HoursWeatherResponseDtoImpl
    implements _Fetch36HoursWeatherResponseDto {
  _$Fetch36HoursWeatherResponseDtoImpl({this.records});

  factory _$Fetch36HoursWeatherResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$Fetch36HoursWeatherResponseDtoImplFromJson(json);

  @override
  final Fetch36HoursWeatherRecordsResponseDto? records;

  @override
  String toString() {
    return 'Fetch36HoursWeatherResponseDto(records: $records)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Fetch36HoursWeatherResponseDtoImpl &&
            (identical(other.records, records) || other.records == records));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, records);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Fetch36HoursWeatherResponseDtoImplCopyWith<
          _$Fetch36HoursWeatherResponseDtoImpl>
      get copyWith => __$$Fetch36HoursWeatherResponseDtoImplCopyWithImpl<
          _$Fetch36HoursWeatherResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Fetch36HoursWeatherResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _Fetch36HoursWeatherResponseDto
    implements Fetch36HoursWeatherResponseDto {
  factory _Fetch36HoursWeatherResponseDto(
          {final Fetch36HoursWeatherRecordsResponseDto? records}) =
      _$Fetch36HoursWeatherResponseDtoImpl;

  factory _Fetch36HoursWeatherResponseDto.fromJson(Map<String, dynamic> json) =
      _$Fetch36HoursWeatherResponseDtoImpl.fromJson;

  @override
  Fetch36HoursWeatherRecordsResponseDto? get records;
  @override
  @JsonKey(ignore: true)
  _$$Fetch36HoursWeatherResponseDtoImplCopyWith<
          _$Fetch36HoursWeatherResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
