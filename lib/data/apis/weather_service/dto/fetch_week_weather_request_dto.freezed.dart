// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_week_weather_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FetchWeekWeatherRequestDto _$FetchWeekWeatherRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _FetchWeekWeatherRequestDto.fromJson(json);
}

/// @nodoc
mixin _$FetchWeekWeatherRequestDto {
  String? get elementName => throw _privateConstructorUsedError;
  String get Authorization => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchWeekWeatherRequestDtoCopyWith<FetchWeekWeatherRequestDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchWeekWeatherRequestDtoCopyWith<$Res> {
  factory $FetchWeekWeatherRequestDtoCopyWith(FetchWeekWeatherRequestDto value,
          $Res Function(FetchWeekWeatherRequestDto) then) =
      _$FetchWeekWeatherRequestDtoCopyWithImpl<$Res,
          FetchWeekWeatherRequestDto>;
  @useResult
  $Res call({String? elementName, String Authorization});
}

/// @nodoc
class _$FetchWeekWeatherRequestDtoCopyWithImpl<$Res,
        $Val extends FetchWeekWeatherRequestDto>
    implements $FetchWeekWeatherRequestDtoCopyWith<$Res> {
  _$FetchWeekWeatherRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elementName = freezed,
    Object? Authorization = null,
  }) {
    return _then(_value.copyWith(
      elementName: freezed == elementName
          ? _value.elementName
          : elementName // ignore: cast_nullable_to_non_nullable
              as String?,
      Authorization: null == Authorization
          ? _value.Authorization
          : Authorization // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchWeekWeatherRequestDtoImplCopyWith<$Res>
    implements $FetchWeekWeatherRequestDtoCopyWith<$Res> {
  factory _$$FetchWeekWeatherRequestDtoImplCopyWith(
          _$FetchWeekWeatherRequestDtoImpl value,
          $Res Function(_$FetchWeekWeatherRequestDtoImpl) then) =
      __$$FetchWeekWeatherRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? elementName, String Authorization});
}

/// @nodoc
class __$$FetchWeekWeatherRequestDtoImplCopyWithImpl<$Res>
    extends _$FetchWeekWeatherRequestDtoCopyWithImpl<$Res,
        _$FetchWeekWeatherRequestDtoImpl>
    implements _$$FetchWeekWeatherRequestDtoImplCopyWith<$Res> {
  __$$FetchWeekWeatherRequestDtoImplCopyWithImpl(
      _$FetchWeekWeatherRequestDtoImpl _value,
      $Res Function(_$FetchWeekWeatherRequestDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elementName = freezed,
    Object? Authorization = null,
  }) {
    return _then(_$FetchWeekWeatherRequestDtoImpl(
      elementName: freezed == elementName
          ? _value.elementName
          : elementName // ignore: cast_nullable_to_non_nullable
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
class _$FetchWeekWeatherRequestDtoImpl implements _FetchWeekWeatherRequestDto {
  _$FetchWeekWeatherRequestDtoImpl(
      {this.elementName, required this.Authorization});

  factory _$FetchWeekWeatherRequestDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchWeekWeatherRequestDtoImplFromJson(json);

  @override
  final String? elementName;
  @override
  final String Authorization;

  @override
  String toString() {
    return 'FetchWeekWeatherRequestDto(elementName: $elementName, Authorization: $Authorization)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchWeekWeatherRequestDtoImpl &&
            (identical(other.elementName, elementName) ||
                other.elementName == elementName) &&
            (identical(other.Authorization, Authorization) ||
                other.Authorization == Authorization));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, elementName, Authorization);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchWeekWeatherRequestDtoImplCopyWith<_$FetchWeekWeatherRequestDtoImpl>
      get copyWith => __$$FetchWeekWeatherRequestDtoImplCopyWithImpl<
          _$FetchWeekWeatherRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchWeekWeatherRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _FetchWeekWeatherRequestDto
    implements FetchWeekWeatherRequestDto {
  factory _FetchWeekWeatherRequestDto(
      {final String? elementName,
      required final String Authorization}) = _$FetchWeekWeatherRequestDtoImpl;

  factory _FetchWeekWeatherRequestDto.fromJson(Map<String, dynamic> json) =
      _$FetchWeekWeatherRequestDtoImpl.fromJson;

  @override
  String? get elementName;
  @override
  String get Authorization;
  @override
  @JsonKey(ignore: true)
  _$$FetchWeekWeatherRequestDtoImplCopyWith<_$FetchWeekWeatherRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
