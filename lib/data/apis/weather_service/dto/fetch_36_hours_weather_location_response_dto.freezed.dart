// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_36_hours_weather_location_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Fetch36HoursWeatherLocationResponseDto
    _$Fetch36HoursWeatherLocationResponseDtoFromJson(
        Map<String, dynamic> json) {
  return _Fetch36HoursWeatherLocationResponseDto.fromJson(json);
}

/// @nodoc
mixin _$Fetch36HoursWeatherLocationResponseDto {
  String? get locationName => throw _privateConstructorUsedError;
  List<Fetch36HoursWeatherWeatherElementResponseDto>? get weatherElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Fetch36HoursWeatherLocationResponseDtoCopyWith<
          Fetch36HoursWeatherLocationResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Fetch36HoursWeatherLocationResponseDtoCopyWith<$Res> {
  factory $Fetch36HoursWeatherLocationResponseDtoCopyWith(
          Fetch36HoursWeatherLocationResponseDto value,
          $Res Function(Fetch36HoursWeatherLocationResponseDto) then) =
      _$Fetch36HoursWeatherLocationResponseDtoCopyWithImpl<$Res,
          Fetch36HoursWeatherLocationResponseDto>;
  @useResult
  $Res call(
      {String? locationName,
      List<Fetch36HoursWeatherWeatherElementResponseDto>? weatherElement});
}

/// @nodoc
class _$Fetch36HoursWeatherLocationResponseDtoCopyWithImpl<$Res,
        $Val extends Fetch36HoursWeatherLocationResponseDto>
    implements $Fetch36HoursWeatherLocationResponseDtoCopyWith<$Res> {
  _$Fetch36HoursWeatherLocationResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationName = freezed,
    Object? weatherElement = freezed,
  }) {
    return _then(_value.copyWith(
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      weatherElement: freezed == weatherElement
          ? _value.weatherElement
          : weatherElement // ignore: cast_nullable_to_non_nullable
              as List<Fetch36HoursWeatherWeatherElementResponseDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Fetch36HoursWeatherLocationResponseDtoImplCopyWith<$Res>
    implements $Fetch36HoursWeatherLocationResponseDtoCopyWith<$Res> {
  factory _$$Fetch36HoursWeatherLocationResponseDtoImplCopyWith(
          _$Fetch36HoursWeatherLocationResponseDtoImpl value,
          $Res Function(_$Fetch36HoursWeatherLocationResponseDtoImpl) then) =
      __$$Fetch36HoursWeatherLocationResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? locationName,
      List<Fetch36HoursWeatherWeatherElementResponseDto>? weatherElement});
}

/// @nodoc
class __$$Fetch36HoursWeatherLocationResponseDtoImplCopyWithImpl<$Res>
    extends _$Fetch36HoursWeatherLocationResponseDtoCopyWithImpl<$Res,
        _$Fetch36HoursWeatherLocationResponseDtoImpl>
    implements _$$Fetch36HoursWeatherLocationResponseDtoImplCopyWith<$Res> {
  __$$Fetch36HoursWeatherLocationResponseDtoImplCopyWithImpl(
      _$Fetch36HoursWeatherLocationResponseDtoImpl _value,
      $Res Function(_$Fetch36HoursWeatherLocationResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationName = freezed,
    Object? weatherElement = freezed,
  }) {
    return _then(_$Fetch36HoursWeatherLocationResponseDtoImpl(
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      weatherElement: freezed == weatherElement
          ? _value._weatherElement
          : weatherElement // ignore: cast_nullable_to_non_nullable
              as List<Fetch36HoursWeatherWeatherElementResponseDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Fetch36HoursWeatherLocationResponseDtoImpl
    implements _Fetch36HoursWeatherLocationResponseDto {
  _$Fetch36HoursWeatherLocationResponseDtoImpl(
      {this.locationName,
      final List<Fetch36HoursWeatherWeatherElementResponseDto>? weatherElement})
      : _weatherElement = weatherElement;

  factory _$Fetch36HoursWeatherLocationResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$Fetch36HoursWeatherLocationResponseDtoImplFromJson(json);

  @override
  final String? locationName;
  final List<Fetch36HoursWeatherWeatherElementResponseDto>? _weatherElement;
  @override
  List<Fetch36HoursWeatherWeatherElementResponseDto>? get weatherElement {
    final value = _weatherElement;
    if (value == null) return null;
    if (_weatherElement is EqualUnmodifiableListView) return _weatherElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Fetch36HoursWeatherLocationResponseDto(locationName: $locationName, weatherElement: $weatherElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Fetch36HoursWeatherLocationResponseDtoImpl &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            const DeepCollectionEquality()
                .equals(other._weatherElement, _weatherElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, locationName,
      const DeepCollectionEquality().hash(_weatherElement));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Fetch36HoursWeatherLocationResponseDtoImplCopyWith<
          _$Fetch36HoursWeatherLocationResponseDtoImpl>
      get copyWith =>
          __$$Fetch36HoursWeatherLocationResponseDtoImplCopyWithImpl<
              _$Fetch36HoursWeatherLocationResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Fetch36HoursWeatherLocationResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _Fetch36HoursWeatherLocationResponseDto
    implements Fetch36HoursWeatherLocationResponseDto {
  factory _Fetch36HoursWeatherLocationResponseDto(
      {final String? locationName,
      final List<Fetch36HoursWeatherWeatherElementResponseDto>?
          weatherElement}) = _$Fetch36HoursWeatherLocationResponseDtoImpl;

  factory _Fetch36HoursWeatherLocationResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$Fetch36HoursWeatherLocationResponseDtoImpl.fromJson;

  @override
  String? get locationName;
  @override
  List<Fetch36HoursWeatherWeatherElementResponseDto>? get weatherElement;
  @override
  @JsonKey(ignore: true)
  _$$Fetch36HoursWeatherLocationResponseDtoImplCopyWith<
          _$Fetch36HoursWeatherLocationResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
