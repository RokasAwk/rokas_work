// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_week_weather_location_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FetchWeekWeatherLocationResponseDto
    _$FetchWeekWeatherLocationResponseDtoFromJson(Map<String, dynamic> json) {
  return _FetchWeekWeatherLocationResponseDto.fromJson(json);
}

/// @nodoc
mixin _$FetchWeekWeatherLocationResponseDto {
  String? get LocationName => throw _privateConstructorUsedError;
  List<FetchWeekWeatherWeatherElementResponseDto>? get WeatherElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchWeekWeatherLocationResponseDtoCopyWith<
          FetchWeekWeatherLocationResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchWeekWeatherLocationResponseDtoCopyWith<$Res> {
  factory $FetchWeekWeatherLocationResponseDtoCopyWith(
          FetchWeekWeatherLocationResponseDto value,
          $Res Function(FetchWeekWeatherLocationResponseDto) then) =
      _$FetchWeekWeatherLocationResponseDtoCopyWithImpl<$Res,
          FetchWeekWeatherLocationResponseDto>;
  @useResult
  $Res call(
      {String? LocationName,
      List<FetchWeekWeatherWeatherElementResponseDto>? WeatherElement});
}

/// @nodoc
class _$FetchWeekWeatherLocationResponseDtoCopyWithImpl<$Res,
        $Val extends FetchWeekWeatherLocationResponseDto>
    implements $FetchWeekWeatherLocationResponseDtoCopyWith<$Res> {
  _$FetchWeekWeatherLocationResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? LocationName = freezed,
    Object? WeatherElement = freezed,
  }) {
    return _then(_value.copyWith(
      LocationName: freezed == LocationName
          ? _value.LocationName
          : LocationName // ignore: cast_nullable_to_non_nullable
              as String?,
      WeatherElement: freezed == WeatherElement
          ? _value.WeatherElement
          : WeatherElement // ignore: cast_nullable_to_non_nullable
              as List<FetchWeekWeatherWeatherElementResponseDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchWeekWeatherLocationResponseDtoImplCopyWith<$Res>
    implements $FetchWeekWeatherLocationResponseDtoCopyWith<$Res> {
  factory _$$FetchWeekWeatherLocationResponseDtoImplCopyWith(
          _$FetchWeekWeatherLocationResponseDtoImpl value,
          $Res Function(_$FetchWeekWeatherLocationResponseDtoImpl) then) =
      __$$FetchWeekWeatherLocationResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? LocationName,
      List<FetchWeekWeatherWeatherElementResponseDto>? WeatherElement});
}

/// @nodoc
class __$$FetchWeekWeatherLocationResponseDtoImplCopyWithImpl<$Res>
    extends _$FetchWeekWeatherLocationResponseDtoCopyWithImpl<$Res,
        _$FetchWeekWeatherLocationResponseDtoImpl>
    implements _$$FetchWeekWeatherLocationResponseDtoImplCopyWith<$Res> {
  __$$FetchWeekWeatherLocationResponseDtoImplCopyWithImpl(
      _$FetchWeekWeatherLocationResponseDtoImpl _value,
      $Res Function(_$FetchWeekWeatherLocationResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? LocationName = freezed,
    Object? WeatherElement = freezed,
  }) {
    return _then(_$FetchWeekWeatherLocationResponseDtoImpl(
      LocationName: freezed == LocationName
          ? _value.LocationName
          : LocationName // ignore: cast_nullable_to_non_nullable
              as String?,
      WeatherElement: freezed == WeatherElement
          ? _value._WeatherElement
          : WeatherElement // ignore: cast_nullable_to_non_nullable
              as List<FetchWeekWeatherWeatherElementResponseDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchWeekWeatherLocationResponseDtoImpl
    implements _FetchWeekWeatherLocationResponseDto {
  _$FetchWeekWeatherLocationResponseDtoImpl(
      {this.LocationName,
      final List<FetchWeekWeatherWeatherElementResponseDto>? WeatherElement})
      : _WeatherElement = WeatherElement;

  factory _$FetchWeekWeatherLocationResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchWeekWeatherLocationResponseDtoImplFromJson(json);

  @override
  final String? LocationName;
  final List<FetchWeekWeatherWeatherElementResponseDto>? _WeatherElement;
  @override
  List<FetchWeekWeatherWeatherElementResponseDto>? get WeatherElement {
    final value = _WeatherElement;
    if (value == null) return null;
    if (_WeatherElement is EqualUnmodifiableListView) return _WeatherElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FetchWeekWeatherLocationResponseDto(LocationName: $LocationName, WeatherElement: $WeatherElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchWeekWeatherLocationResponseDtoImpl &&
            (identical(other.LocationName, LocationName) ||
                other.LocationName == LocationName) &&
            const DeepCollectionEquality()
                .equals(other._WeatherElement, _WeatherElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, LocationName,
      const DeepCollectionEquality().hash(_WeatherElement));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchWeekWeatherLocationResponseDtoImplCopyWith<
          _$FetchWeekWeatherLocationResponseDtoImpl>
      get copyWith => __$$FetchWeekWeatherLocationResponseDtoImplCopyWithImpl<
          _$FetchWeekWeatherLocationResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchWeekWeatherLocationResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _FetchWeekWeatherLocationResponseDto
    implements FetchWeekWeatherLocationResponseDto {
  factory _FetchWeekWeatherLocationResponseDto(
      {final String? LocationName,
      final List<FetchWeekWeatherWeatherElementResponseDto>?
          WeatherElement}) = _$FetchWeekWeatherLocationResponseDtoImpl;

  factory _FetchWeekWeatherLocationResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$FetchWeekWeatherLocationResponseDtoImpl.fromJson;

  @override
  String? get LocationName;
  @override
  List<FetchWeekWeatherWeatherElementResponseDto>? get WeatherElement;
  @override
  @JsonKey(ignore: true)
  _$$FetchWeekWeatherLocationResponseDtoImplCopyWith<
          _$FetchWeekWeatherLocationResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
