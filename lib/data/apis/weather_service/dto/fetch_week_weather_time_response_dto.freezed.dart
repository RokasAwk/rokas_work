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
  String? get StartTime => throw _privateConstructorUsedError;
  String? get EndTime => throw _privateConstructorUsedError;
  List<FetchWeekWeatherelEmentValueResponseDto>? get ElementValue =>
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
      {String? StartTime,
      String? EndTime,
      List<FetchWeekWeatherelEmentValueResponseDto>? ElementValue});
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
    Object? StartTime = freezed,
    Object? EndTime = freezed,
    Object? ElementValue = freezed,
  }) {
    return _then(_value.copyWith(
      StartTime: freezed == StartTime
          ? _value.StartTime
          : StartTime // ignore: cast_nullable_to_non_nullable
              as String?,
      EndTime: freezed == EndTime
          ? _value.EndTime
          : EndTime // ignore: cast_nullable_to_non_nullable
              as String?,
      ElementValue: freezed == ElementValue
          ? _value.ElementValue
          : ElementValue // ignore: cast_nullable_to_non_nullable
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
      {String? StartTime,
      String? EndTime,
      List<FetchWeekWeatherelEmentValueResponseDto>? ElementValue});
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
    Object? StartTime = freezed,
    Object? EndTime = freezed,
    Object? ElementValue = freezed,
  }) {
    return _then(_$FetchWeekWeatherTimeResponseDtoImpl(
      StartTime: freezed == StartTime
          ? _value.StartTime
          : StartTime // ignore: cast_nullable_to_non_nullable
              as String?,
      EndTime: freezed == EndTime
          ? _value.EndTime
          : EndTime // ignore: cast_nullable_to_non_nullable
              as String?,
      ElementValue: freezed == ElementValue
          ? _value._ElementValue
          : ElementValue // ignore: cast_nullable_to_non_nullable
              as List<FetchWeekWeatherelEmentValueResponseDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchWeekWeatherTimeResponseDtoImpl
    implements _FetchWeekWeatherTimeResponseDto {
  _$FetchWeekWeatherTimeResponseDtoImpl(
      {this.StartTime,
      this.EndTime,
      final List<FetchWeekWeatherelEmentValueResponseDto>? ElementValue})
      : _ElementValue = ElementValue;

  factory _$FetchWeekWeatherTimeResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchWeekWeatherTimeResponseDtoImplFromJson(json);

  @override
  final String? StartTime;
  @override
  final String? EndTime;
  final List<FetchWeekWeatherelEmentValueResponseDto>? _ElementValue;
  @override
  List<FetchWeekWeatherelEmentValueResponseDto>? get ElementValue {
    final value = _ElementValue;
    if (value == null) return null;
    if (_ElementValue is EqualUnmodifiableListView) return _ElementValue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FetchWeekWeatherTimeResponseDto(StartTime: $StartTime, EndTime: $EndTime, ElementValue: $ElementValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchWeekWeatherTimeResponseDtoImpl &&
            (identical(other.StartTime, StartTime) ||
                other.StartTime == StartTime) &&
            (identical(other.EndTime, EndTime) || other.EndTime == EndTime) &&
            const DeepCollectionEquality()
                .equals(other._ElementValue, _ElementValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, StartTime, EndTime,
      const DeepCollectionEquality().hash(_ElementValue));

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
          {final String? StartTime,
          final String? EndTime,
          final List<FetchWeekWeatherelEmentValueResponseDto>? ElementValue}) =
      _$FetchWeekWeatherTimeResponseDtoImpl;

  factory _FetchWeekWeatherTimeResponseDto.fromJson(Map<String, dynamic> json) =
      _$FetchWeekWeatherTimeResponseDtoImpl.fromJson;

  @override
  String? get StartTime;
  @override
  String? get EndTime;
  @override
  List<FetchWeekWeatherelEmentValueResponseDto>? get ElementValue;
  @override
  @JsonKey(ignore: true)
  _$$FetchWeekWeatherTimeResponseDtoImplCopyWith<
          _$FetchWeekWeatherTimeResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
