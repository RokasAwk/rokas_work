// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_week_weather_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FetchWeekWeatherResponseDto _$FetchWeekWeatherResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _FetchWeekWeatherResponseDto.fromJson(json);
}

/// @nodoc
mixin _$FetchWeekWeatherResponseDto {
  FetchWeekWeatherRecordsResponseDto? get records =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchWeekWeatherResponseDtoCopyWith<FetchWeekWeatherResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchWeekWeatherResponseDtoCopyWith<$Res> {
  factory $FetchWeekWeatherResponseDtoCopyWith(
          FetchWeekWeatherResponseDto value,
          $Res Function(FetchWeekWeatherResponseDto) then) =
      _$FetchWeekWeatherResponseDtoCopyWithImpl<$Res,
          FetchWeekWeatherResponseDto>;
  @useResult
  $Res call({FetchWeekWeatherRecordsResponseDto? records});

  $FetchWeekWeatherRecordsResponseDtoCopyWith<$Res>? get records;
}

/// @nodoc
class _$FetchWeekWeatherResponseDtoCopyWithImpl<$Res,
        $Val extends FetchWeekWeatherResponseDto>
    implements $FetchWeekWeatherResponseDtoCopyWith<$Res> {
  _$FetchWeekWeatherResponseDtoCopyWithImpl(this._value, this._then);

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
              as FetchWeekWeatherRecordsResponseDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FetchWeekWeatherRecordsResponseDtoCopyWith<$Res>? get records {
    if (_value.records == null) {
      return null;
    }

    return $FetchWeekWeatherRecordsResponseDtoCopyWith<$Res>(_value.records!,
        (value) {
      return _then(_value.copyWith(records: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FetchWeekWeatherResponseDtoImplCopyWith<$Res>
    implements $FetchWeekWeatherResponseDtoCopyWith<$Res> {
  factory _$$FetchWeekWeatherResponseDtoImplCopyWith(
          _$FetchWeekWeatherResponseDtoImpl value,
          $Res Function(_$FetchWeekWeatherResponseDtoImpl) then) =
      __$$FetchWeekWeatherResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FetchWeekWeatherRecordsResponseDto? records});

  @override
  $FetchWeekWeatherRecordsResponseDtoCopyWith<$Res>? get records;
}

/// @nodoc
class __$$FetchWeekWeatherResponseDtoImplCopyWithImpl<$Res>
    extends _$FetchWeekWeatherResponseDtoCopyWithImpl<$Res,
        _$FetchWeekWeatherResponseDtoImpl>
    implements _$$FetchWeekWeatherResponseDtoImplCopyWith<$Res> {
  __$$FetchWeekWeatherResponseDtoImplCopyWithImpl(
      _$FetchWeekWeatherResponseDtoImpl _value,
      $Res Function(_$FetchWeekWeatherResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = freezed,
  }) {
    return _then(_$FetchWeekWeatherResponseDtoImpl(
      records: freezed == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as FetchWeekWeatherRecordsResponseDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchWeekWeatherResponseDtoImpl
    implements _FetchWeekWeatherResponseDto {
  _$FetchWeekWeatherResponseDtoImpl({this.records});

  factory _$FetchWeekWeatherResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchWeekWeatherResponseDtoImplFromJson(json);

  @override
  final FetchWeekWeatherRecordsResponseDto? records;

  @override
  String toString() {
    return 'FetchWeekWeatherResponseDto(records: $records)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchWeekWeatherResponseDtoImpl &&
            (identical(other.records, records) || other.records == records));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, records);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchWeekWeatherResponseDtoImplCopyWith<_$FetchWeekWeatherResponseDtoImpl>
      get copyWith => __$$FetchWeekWeatherResponseDtoImplCopyWithImpl<
          _$FetchWeekWeatherResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchWeekWeatherResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _FetchWeekWeatherResponseDto
    implements FetchWeekWeatherResponseDto {
  factory _FetchWeekWeatherResponseDto(
          {final FetchWeekWeatherRecordsResponseDto? records}) =
      _$FetchWeekWeatherResponseDtoImpl;

  factory _FetchWeekWeatherResponseDto.fromJson(Map<String, dynamic> json) =
      _$FetchWeekWeatherResponseDtoImpl.fromJson;

  @override
  FetchWeekWeatherRecordsResponseDto? get records;
  @override
  @JsonKey(ignore: true)
  _$$FetchWeekWeatherResponseDtoImplCopyWith<_$FetchWeekWeatherResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
