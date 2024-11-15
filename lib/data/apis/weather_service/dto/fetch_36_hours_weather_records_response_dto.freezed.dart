// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_36_hours_weather_records_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Fetch36HoursWeatherRecordsResponseDto
    _$Fetch36HoursWeatherRecordsResponseDtoFromJson(Map<String, dynamic> json) {
  return _Fetch36HoursWeatherRecordsResponseDto.fromJson(json);
}

/// @nodoc
mixin _$Fetch36HoursWeatherRecordsResponseDto {
  List<Fetch36HoursWeatherLocationResponseDto>? get location =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Fetch36HoursWeatherRecordsResponseDtoCopyWith<
          Fetch36HoursWeatherRecordsResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Fetch36HoursWeatherRecordsResponseDtoCopyWith<$Res> {
  factory $Fetch36HoursWeatherRecordsResponseDtoCopyWith(
          Fetch36HoursWeatherRecordsResponseDto value,
          $Res Function(Fetch36HoursWeatherRecordsResponseDto) then) =
      _$Fetch36HoursWeatherRecordsResponseDtoCopyWithImpl<$Res,
          Fetch36HoursWeatherRecordsResponseDto>;
  @useResult
  $Res call({List<Fetch36HoursWeatherLocationResponseDto>? location});
}

/// @nodoc
class _$Fetch36HoursWeatherRecordsResponseDtoCopyWithImpl<$Res,
        $Val extends Fetch36HoursWeatherRecordsResponseDto>
    implements $Fetch36HoursWeatherRecordsResponseDtoCopyWith<$Res> {
  _$Fetch36HoursWeatherRecordsResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<Fetch36HoursWeatherLocationResponseDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Fetch36HoursWeatherRecordsResponseDtoImplCopyWith<$Res>
    implements $Fetch36HoursWeatherRecordsResponseDtoCopyWith<$Res> {
  factory _$$Fetch36HoursWeatherRecordsResponseDtoImplCopyWith(
          _$Fetch36HoursWeatherRecordsResponseDtoImpl value,
          $Res Function(_$Fetch36HoursWeatherRecordsResponseDtoImpl) then) =
      __$$Fetch36HoursWeatherRecordsResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Fetch36HoursWeatherLocationResponseDto>? location});
}

/// @nodoc
class __$$Fetch36HoursWeatherRecordsResponseDtoImplCopyWithImpl<$Res>
    extends _$Fetch36HoursWeatherRecordsResponseDtoCopyWithImpl<$Res,
        _$Fetch36HoursWeatherRecordsResponseDtoImpl>
    implements _$$Fetch36HoursWeatherRecordsResponseDtoImplCopyWith<$Res> {
  __$$Fetch36HoursWeatherRecordsResponseDtoImplCopyWithImpl(
      _$Fetch36HoursWeatherRecordsResponseDtoImpl _value,
      $Res Function(_$Fetch36HoursWeatherRecordsResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_$Fetch36HoursWeatherRecordsResponseDtoImpl(
      location: freezed == location
          ? _value._location
          : location // ignore: cast_nullable_to_non_nullable
              as List<Fetch36HoursWeatherLocationResponseDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Fetch36HoursWeatherRecordsResponseDtoImpl
    implements _Fetch36HoursWeatherRecordsResponseDto {
  _$Fetch36HoursWeatherRecordsResponseDtoImpl(
      {final List<Fetch36HoursWeatherLocationResponseDto>? location})
      : _location = location;

  factory _$Fetch36HoursWeatherRecordsResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$Fetch36HoursWeatherRecordsResponseDtoImplFromJson(json);

  final List<Fetch36HoursWeatherLocationResponseDto>? _location;
  @override
  List<Fetch36HoursWeatherLocationResponseDto>? get location {
    final value = _location;
    if (value == null) return null;
    if (_location is EqualUnmodifiableListView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Fetch36HoursWeatherRecordsResponseDto(location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Fetch36HoursWeatherRecordsResponseDtoImpl &&
            const DeepCollectionEquality().equals(other._location, _location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_location));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Fetch36HoursWeatherRecordsResponseDtoImplCopyWith<
          _$Fetch36HoursWeatherRecordsResponseDtoImpl>
      get copyWith => __$$Fetch36HoursWeatherRecordsResponseDtoImplCopyWithImpl<
          _$Fetch36HoursWeatherRecordsResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Fetch36HoursWeatherRecordsResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _Fetch36HoursWeatherRecordsResponseDto
    implements Fetch36HoursWeatherRecordsResponseDto {
  factory _Fetch36HoursWeatherRecordsResponseDto(
          {final List<Fetch36HoursWeatherLocationResponseDto>? location}) =
      _$Fetch36HoursWeatherRecordsResponseDtoImpl;

  factory _Fetch36HoursWeatherRecordsResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$Fetch36HoursWeatherRecordsResponseDtoImpl.fromJson;

  @override
  List<Fetch36HoursWeatherLocationResponseDto>? get location;
  @override
  @JsonKey(ignore: true)
  _$$Fetch36HoursWeatherRecordsResponseDtoImplCopyWith<
          _$Fetch36HoursWeatherRecordsResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
