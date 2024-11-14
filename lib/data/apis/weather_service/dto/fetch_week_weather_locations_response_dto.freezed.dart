// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_week_weather_locations_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FetchWeekWeatherLocationsResponseDto
    _$FetchWeekWeatherLocationsResponseDtoFromJson(Map<String, dynamic> json) {
  return _FetchWeekWeatherLocationsResponseDto.fromJson(json);
}

/// @nodoc
mixin _$FetchWeekWeatherLocationsResponseDto {
  String? get datasetDescription => throw _privateConstructorUsedError;
  List<FetchWeekWeatherLocationResponseDto>? get location =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchWeekWeatherLocationsResponseDtoCopyWith<
          FetchWeekWeatherLocationsResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchWeekWeatherLocationsResponseDtoCopyWith<$Res> {
  factory $FetchWeekWeatherLocationsResponseDtoCopyWith(
          FetchWeekWeatherLocationsResponseDto value,
          $Res Function(FetchWeekWeatherLocationsResponseDto) then) =
      _$FetchWeekWeatherLocationsResponseDtoCopyWithImpl<$Res,
          FetchWeekWeatherLocationsResponseDto>;
  @useResult
  $Res call(
      {String? datasetDescription,
      List<FetchWeekWeatherLocationResponseDto>? location});
}

/// @nodoc
class _$FetchWeekWeatherLocationsResponseDtoCopyWithImpl<$Res,
        $Val extends FetchWeekWeatherLocationsResponseDto>
    implements $FetchWeekWeatherLocationsResponseDtoCopyWith<$Res> {
  _$FetchWeekWeatherLocationsResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datasetDescription = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      datasetDescription: freezed == datasetDescription
          ? _value.datasetDescription
          : datasetDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<FetchWeekWeatherLocationResponseDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchWeekWeatherLocationsResponseDtoImplCopyWith<$Res>
    implements $FetchWeekWeatherLocationsResponseDtoCopyWith<$Res> {
  factory _$$FetchWeekWeatherLocationsResponseDtoImplCopyWith(
          _$FetchWeekWeatherLocationsResponseDtoImpl value,
          $Res Function(_$FetchWeekWeatherLocationsResponseDtoImpl) then) =
      __$$FetchWeekWeatherLocationsResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? datasetDescription,
      List<FetchWeekWeatherLocationResponseDto>? location});
}

/// @nodoc
class __$$FetchWeekWeatherLocationsResponseDtoImplCopyWithImpl<$Res>
    extends _$FetchWeekWeatherLocationsResponseDtoCopyWithImpl<$Res,
        _$FetchWeekWeatherLocationsResponseDtoImpl>
    implements _$$FetchWeekWeatherLocationsResponseDtoImplCopyWith<$Res> {
  __$$FetchWeekWeatherLocationsResponseDtoImplCopyWithImpl(
      _$FetchWeekWeatherLocationsResponseDtoImpl _value,
      $Res Function(_$FetchWeekWeatherLocationsResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datasetDescription = freezed,
    Object? location = freezed,
  }) {
    return _then(_$FetchWeekWeatherLocationsResponseDtoImpl(
      datasetDescription: freezed == datasetDescription
          ? _value.datasetDescription
          : datasetDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value._location
          : location // ignore: cast_nullable_to_non_nullable
              as List<FetchWeekWeatherLocationResponseDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchWeekWeatherLocationsResponseDtoImpl
    implements _FetchWeekWeatherLocationsResponseDto {
  _$FetchWeekWeatherLocationsResponseDtoImpl(
      {this.datasetDescription,
      final List<FetchWeekWeatherLocationResponseDto>? location})
      : _location = location;

  factory _$FetchWeekWeatherLocationsResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchWeekWeatherLocationsResponseDtoImplFromJson(json);

  @override
  final String? datasetDescription;
  final List<FetchWeekWeatherLocationResponseDto>? _location;
  @override
  List<FetchWeekWeatherLocationResponseDto>? get location {
    final value = _location;
    if (value == null) return null;
    if (_location is EqualUnmodifiableListView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FetchWeekWeatherLocationsResponseDto(datasetDescription: $datasetDescription, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchWeekWeatherLocationsResponseDtoImpl &&
            (identical(other.datasetDescription, datasetDescription) ||
                other.datasetDescription == datasetDescription) &&
            const DeepCollectionEquality().equals(other._location, _location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, datasetDescription,
      const DeepCollectionEquality().hash(_location));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchWeekWeatherLocationsResponseDtoImplCopyWith<
          _$FetchWeekWeatherLocationsResponseDtoImpl>
      get copyWith => __$$FetchWeekWeatherLocationsResponseDtoImplCopyWithImpl<
          _$FetchWeekWeatherLocationsResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchWeekWeatherLocationsResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _FetchWeekWeatherLocationsResponseDto
    implements FetchWeekWeatherLocationsResponseDto {
  factory _FetchWeekWeatherLocationsResponseDto(
          {final String? datasetDescription,
          final List<FetchWeekWeatherLocationResponseDto>? location}) =
      _$FetchWeekWeatherLocationsResponseDtoImpl;

  factory _FetchWeekWeatherLocationsResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$FetchWeekWeatherLocationsResponseDtoImpl.fromJson;

  @override
  String? get datasetDescription;
  @override
  List<FetchWeekWeatherLocationResponseDto>? get location;
  @override
  @JsonKey(ignore: true)
  _$$FetchWeekWeatherLocationsResponseDtoImplCopyWith<
          _$FetchWeekWeatherLocationsResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
