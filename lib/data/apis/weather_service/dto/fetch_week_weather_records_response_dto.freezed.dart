// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_week_weather_records_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FetchWeekWeatherRecordsResponseDto _$FetchWeekWeatherRecordsResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _FetchWeekWeatherRecordsResponseDto.fromJson(json);
}

/// @nodoc
mixin _$FetchWeekWeatherRecordsResponseDto {
  List<FetchWeekWeatherLocationsResponseDto>? get locations =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchWeekWeatherRecordsResponseDtoCopyWith<
          FetchWeekWeatherRecordsResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchWeekWeatherRecordsResponseDtoCopyWith<$Res> {
  factory $FetchWeekWeatherRecordsResponseDtoCopyWith(
          FetchWeekWeatherRecordsResponseDto value,
          $Res Function(FetchWeekWeatherRecordsResponseDto) then) =
      _$FetchWeekWeatherRecordsResponseDtoCopyWithImpl<$Res,
          FetchWeekWeatherRecordsResponseDto>;
  @useResult
  $Res call({List<FetchWeekWeatherLocationsResponseDto>? locations});
}

/// @nodoc
class _$FetchWeekWeatherRecordsResponseDtoCopyWithImpl<$Res,
        $Val extends FetchWeekWeatherRecordsResponseDto>
    implements $FetchWeekWeatherRecordsResponseDtoCopyWith<$Res> {
  _$FetchWeekWeatherRecordsResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locations = freezed,
  }) {
    return _then(_value.copyWith(
      locations: freezed == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<FetchWeekWeatherLocationsResponseDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchWeekWeatherRecordsResponseDtoImplCopyWith<$Res>
    implements $FetchWeekWeatherRecordsResponseDtoCopyWith<$Res> {
  factory _$$FetchWeekWeatherRecordsResponseDtoImplCopyWith(
          _$FetchWeekWeatherRecordsResponseDtoImpl value,
          $Res Function(_$FetchWeekWeatherRecordsResponseDtoImpl) then) =
      __$$FetchWeekWeatherRecordsResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FetchWeekWeatherLocationsResponseDto>? locations});
}

/// @nodoc
class __$$FetchWeekWeatherRecordsResponseDtoImplCopyWithImpl<$Res>
    extends _$FetchWeekWeatherRecordsResponseDtoCopyWithImpl<$Res,
        _$FetchWeekWeatherRecordsResponseDtoImpl>
    implements _$$FetchWeekWeatherRecordsResponseDtoImplCopyWith<$Res> {
  __$$FetchWeekWeatherRecordsResponseDtoImplCopyWithImpl(
      _$FetchWeekWeatherRecordsResponseDtoImpl _value,
      $Res Function(_$FetchWeekWeatherRecordsResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locations = freezed,
  }) {
    return _then(_$FetchWeekWeatherRecordsResponseDtoImpl(
      locations: freezed == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<FetchWeekWeatherLocationsResponseDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchWeekWeatherRecordsResponseDtoImpl
    implements _FetchWeekWeatherRecordsResponseDto {
  _$FetchWeekWeatherRecordsResponseDtoImpl(
      {final List<FetchWeekWeatherLocationsResponseDto>? locations})
      : _locations = locations;

  factory _$FetchWeekWeatherRecordsResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchWeekWeatherRecordsResponseDtoImplFromJson(json);

  final List<FetchWeekWeatherLocationsResponseDto>? _locations;
  @override
  List<FetchWeekWeatherLocationsResponseDto>? get locations {
    final value = _locations;
    if (value == null) return null;
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FetchWeekWeatherRecordsResponseDto(locations: $locations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchWeekWeatherRecordsResponseDtoImpl &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_locations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchWeekWeatherRecordsResponseDtoImplCopyWith<
          _$FetchWeekWeatherRecordsResponseDtoImpl>
      get copyWith => __$$FetchWeekWeatherRecordsResponseDtoImplCopyWithImpl<
          _$FetchWeekWeatherRecordsResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchWeekWeatherRecordsResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _FetchWeekWeatherRecordsResponseDto
    implements FetchWeekWeatherRecordsResponseDto {
  factory _FetchWeekWeatherRecordsResponseDto(
          {final List<FetchWeekWeatherLocationsResponseDto>? locations}) =
      _$FetchWeekWeatherRecordsResponseDtoImpl;

  factory _FetchWeekWeatherRecordsResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$FetchWeekWeatherRecordsResponseDtoImpl.fromJson;

  @override
  List<FetchWeekWeatherLocationsResponseDto>? get locations;
  @override
  @JsonKey(ignore: true)
  _$$FetchWeekWeatherRecordsResponseDtoImplCopyWith<
          _$FetchWeekWeatherRecordsResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
