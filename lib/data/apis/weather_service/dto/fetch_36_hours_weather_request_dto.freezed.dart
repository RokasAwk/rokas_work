// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_36_hours_weather_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Fetch36HoursWeatherRequestDto _$Fetch36HoursWeatherRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _Fetch36HoursWeatherRequestDto.fromJson(json);
}

/// @nodoc
mixin _$Fetch36HoursWeatherRequestDto {
  String? get elementName => throw _privateConstructorUsedError;
  String? get locationName => throw _privateConstructorUsedError;
  String get Authorization => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Fetch36HoursWeatherRequestDtoCopyWith<Fetch36HoursWeatherRequestDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Fetch36HoursWeatherRequestDtoCopyWith<$Res> {
  factory $Fetch36HoursWeatherRequestDtoCopyWith(
          Fetch36HoursWeatherRequestDto value,
          $Res Function(Fetch36HoursWeatherRequestDto) then) =
      _$Fetch36HoursWeatherRequestDtoCopyWithImpl<$Res,
          Fetch36HoursWeatherRequestDto>;
  @useResult
  $Res call({String? elementName, String? locationName, String Authorization});
}

/// @nodoc
class _$Fetch36HoursWeatherRequestDtoCopyWithImpl<$Res,
        $Val extends Fetch36HoursWeatherRequestDto>
    implements $Fetch36HoursWeatherRequestDtoCopyWith<$Res> {
  _$Fetch36HoursWeatherRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elementName = freezed,
    Object? locationName = freezed,
    Object? Authorization = null,
  }) {
    return _then(_value.copyWith(
      elementName: freezed == elementName
          ? _value.elementName
          : elementName // ignore: cast_nullable_to_non_nullable
              as String?,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      Authorization: null == Authorization
          ? _value.Authorization
          : Authorization // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Fetch36HoursWeatherRequestDtoImplCopyWith<$Res>
    implements $Fetch36HoursWeatherRequestDtoCopyWith<$Res> {
  factory _$$Fetch36HoursWeatherRequestDtoImplCopyWith(
          _$Fetch36HoursWeatherRequestDtoImpl value,
          $Res Function(_$Fetch36HoursWeatherRequestDtoImpl) then) =
      __$$Fetch36HoursWeatherRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? elementName, String? locationName, String Authorization});
}

/// @nodoc
class __$$Fetch36HoursWeatherRequestDtoImplCopyWithImpl<$Res>
    extends _$Fetch36HoursWeatherRequestDtoCopyWithImpl<$Res,
        _$Fetch36HoursWeatherRequestDtoImpl>
    implements _$$Fetch36HoursWeatherRequestDtoImplCopyWith<$Res> {
  __$$Fetch36HoursWeatherRequestDtoImplCopyWithImpl(
      _$Fetch36HoursWeatherRequestDtoImpl _value,
      $Res Function(_$Fetch36HoursWeatherRequestDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elementName = freezed,
    Object? locationName = freezed,
    Object? Authorization = null,
  }) {
    return _then(_$Fetch36HoursWeatherRequestDtoImpl(
      elementName: freezed == elementName
          ? _value.elementName
          : elementName // ignore: cast_nullable_to_non_nullable
              as String?,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      Authorization: null == Authorization
          ? _value.Authorization
          : Authorization // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Fetch36HoursWeatherRequestDtoImpl
    implements _Fetch36HoursWeatherRequestDto {
  _$Fetch36HoursWeatherRequestDtoImpl(
      {this.elementName, this.locationName, required this.Authorization});

  factory _$Fetch36HoursWeatherRequestDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$Fetch36HoursWeatherRequestDtoImplFromJson(json);

  @override
  final String? elementName;
  @override
  final String? locationName;
  @override
  final String Authorization;

  @override
  String toString() {
    return 'Fetch36HoursWeatherRequestDto(elementName: $elementName, locationName: $locationName, Authorization: $Authorization)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Fetch36HoursWeatherRequestDtoImpl &&
            (identical(other.elementName, elementName) ||
                other.elementName == elementName) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.Authorization, Authorization) ||
                other.Authorization == Authorization));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, elementName, locationName, Authorization);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Fetch36HoursWeatherRequestDtoImplCopyWith<
          _$Fetch36HoursWeatherRequestDtoImpl>
      get copyWith => __$$Fetch36HoursWeatherRequestDtoImplCopyWithImpl<
          _$Fetch36HoursWeatherRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Fetch36HoursWeatherRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _Fetch36HoursWeatherRequestDto
    implements Fetch36HoursWeatherRequestDto {
  factory _Fetch36HoursWeatherRequestDto(
          {final String? elementName,
          final String? locationName,
          required final String Authorization}) =
      _$Fetch36HoursWeatherRequestDtoImpl;

  factory _Fetch36HoursWeatherRequestDto.fromJson(Map<String, dynamic> json) =
      _$Fetch36HoursWeatherRequestDtoImpl.fromJson;

  @override
  String? get elementName;
  @override
  String? get locationName;
  @override
  String get Authorization;
  @override
  @JsonKey(ignore: true)
  _$$Fetch36HoursWeatherRequestDtoImplCopyWith<
          _$Fetch36HoursWeatherRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
