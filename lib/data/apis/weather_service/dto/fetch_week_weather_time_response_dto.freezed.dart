// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_week_weather_time_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FetchWeekWeatherTimeResponseDto _$FetchWeekWeatherTimeResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _FetchWeekWeatherTimeResponseDto.fromJson(json);
}

/// @nodoc
mixin _$FetchWeekWeatherTimeResponseDto {
  String? get startTime => throw _privateConstructorUsedError;
  String? get endTime => throw _privateConstructorUsedError;
  List<FetchWeekWeatherelEmentValueResponseDto>? get elementValue =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchWeekWeatherTimeResponseDtoCopyWith<FetchWeekWeatherTimeResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchWeekWeatherTimeResponseDtoCopyWith<$Res> {
  factory $FetchWeekWeatherTimeResponseDtoCopyWith(
          FetchWeekWeatherTimeResponseDto value,
          $Res Function(FetchWeekWeatherTimeResponseDto) then) =
      _$FetchWeekWeatherTimeResponseDtoCopyWithImpl<$Res,
          FetchWeekWeatherTimeResponseDto>;
  @useResult
  $Res call(
      {String? startTime,
      String? endTime,
      List<FetchWeekWeatherelEmentValueResponseDto>? elementValue});
}

/// @nodoc
class _$FetchWeekWeatherTimeResponseDtoCopyWithImpl<$Res,
        $Val extends FetchWeekWeatherTimeResponseDto>
    implements $FetchWeekWeatherTimeResponseDtoCopyWith<$Res> {
  _$FetchWeekWeatherTimeResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? elementValue = freezed,
  }) {
    return _then(_value.copyWith(
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      elementValue: freezed == elementValue
          ? _value.elementValue
          : elementValue // ignore: cast_nullable_to_non_nullable
              as List<FetchWeekWeatherelEmentValueResponseDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchWeekWeatherTimeResponseDtoImplCopyWith<$Res>
    implements $FetchWeekWeatherTimeResponseDtoCopyWith<$Res> {
  factory _$$FetchWeekWeatherTimeResponseDtoImplCopyWith(
          _$FetchWeekWeatherTimeResponseDtoImpl value,
          $Res Function(_$FetchWeekWeatherTimeResponseDtoImpl) then) =
      __$$FetchWeekWeatherTimeResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? startTime,
      String? endTime,
      List<FetchWeekWeatherelEmentValueResponseDto>? elementValue});
}

/// @nodoc
class __$$FetchWeekWeatherTimeResponseDtoImplCopyWithImpl<$Res>
    extends _$FetchWeekWeatherTimeResponseDtoCopyWithImpl<$Res,
        _$FetchWeekWeatherTimeResponseDtoImpl>
    implements _$$FetchWeekWeatherTimeResponseDtoImplCopyWith<$Res> {
  __$$FetchWeekWeatherTimeResponseDtoImplCopyWithImpl(
      _$FetchWeekWeatherTimeResponseDtoImpl _value,
      $Res Function(_$FetchWeekWeatherTimeResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? elementValue = freezed,
  }) {
    return _then(_$FetchWeekWeatherTimeResponseDtoImpl(
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      elementValue: freezed == elementValue
          ? _value._elementValue
          : elementValue // ignore: cast_nullable_to_non_nullable
              as List<FetchWeekWeatherelEmentValueResponseDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchWeekWeatherTimeResponseDtoImpl
    implements _FetchWeekWeatherTimeResponseDto {
  _$FetchWeekWeatherTimeResponseDtoImpl(
      {this.startTime,
      this.endTime,
      final List<FetchWeekWeatherelEmentValueResponseDto>? elementValue})
      : _elementValue = elementValue;

  factory _$FetchWeekWeatherTimeResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchWeekWeatherTimeResponseDtoImplFromJson(json);

  @override
  final String? startTime;
  @override
  final String? endTime;
  final List<FetchWeekWeatherelEmentValueResponseDto>? _elementValue;
  @override
  List<FetchWeekWeatherelEmentValueResponseDto>? get elementValue {
    final value = _elementValue;
    if (value == null) return null;
    if (_elementValue is EqualUnmodifiableListView) return _elementValue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FetchWeekWeatherTimeResponseDto(startTime: $startTime, endTime: $endTime, elementValue: $elementValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchWeekWeatherTimeResponseDtoImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            const DeepCollectionEquality()
                .equals(other._elementValue, _elementValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime,
      const DeepCollectionEquality().hash(_elementValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchWeekWeatherTimeResponseDtoImplCopyWith<
          _$FetchWeekWeatherTimeResponseDtoImpl>
      get copyWith => __$$FetchWeekWeatherTimeResponseDtoImplCopyWithImpl<
          _$FetchWeekWeatherTimeResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchWeekWeatherTimeResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _FetchWeekWeatherTimeResponseDto
    implements FetchWeekWeatherTimeResponseDto {
  factory _FetchWeekWeatherTimeResponseDto(
          {final String? startTime,
          final String? endTime,
          final List<FetchWeekWeatherelEmentValueResponseDto>? elementValue}) =
      _$FetchWeekWeatherTimeResponseDtoImpl;

  factory _FetchWeekWeatherTimeResponseDto.fromJson(Map<String, dynamic> json) =
      _$FetchWeekWeatherTimeResponseDtoImpl.fromJson;

  @override
  String? get startTime;
  @override
  String? get endTime;
  @override
  List<FetchWeekWeatherelEmentValueResponseDto>? get elementValue;
  @override
  @JsonKey(ignore: true)
  _$$FetchWeekWeatherTimeResponseDtoImplCopyWith<
          _$FetchWeekWeatherTimeResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
