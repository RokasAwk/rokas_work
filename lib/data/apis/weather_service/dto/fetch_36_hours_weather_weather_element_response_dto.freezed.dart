// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_36_hours_weather_weather_element_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Fetch36HoursWeatherWeatherElementResponseDto
    _$Fetch36HoursWeatherWeatherElementResponseDtoFromJson(
        Map<String, dynamic> json) {
  return _Fetch36HoursWeatherWeatherElementResponseDto.fromJson(json);
}

/// @nodoc
mixin _$Fetch36HoursWeatherWeatherElementResponseDto {
  String? get elementName => throw _privateConstructorUsedError;
  List<Fetch36HoursWeatherTimeResponseDto>? get time =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Fetch36HoursWeatherWeatherElementResponseDtoCopyWith<
          Fetch36HoursWeatherWeatherElementResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Fetch36HoursWeatherWeatherElementResponseDtoCopyWith<$Res> {
  factory $Fetch36HoursWeatherWeatherElementResponseDtoCopyWith(
          Fetch36HoursWeatherWeatherElementResponseDto value,
          $Res Function(Fetch36HoursWeatherWeatherElementResponseDto) then) =
      _$Fetch36HoursWeatherWeatherElementResponseDtoCopyWithImpl<$Res,
          Fetch36HoursWeatherWeatherElementResponseDto>;
  @useResult
  $Res call(
      {String? elementName, List<Fetch36HoursWeatherTimeResponseDto>? time});
}

/// @nodoc
class _$Fetch36HoursWeatherWeatherElementResponseDtoCopyWithImpl<$Res,
        $Val extends Fetch36HoursWeatherWeatherElementResponseDto>
    implements $Fetch36HoursWeatherWeatherElementResponseDtoCopyWith<$Res> {
  _$Fetch36HoursWeatherWeatherElementResponseDtoCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elementName = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      elementName: freezed == elementName
          ? _value.elementName
          : elementName // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<Fetch36HoursWeatherTimeResponseDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Fetch36HoursWeatherWeatherElementResponseDtoImplCopyWith<$Res>
    implements $Fetch36HoursWeatherWeatherElementResponseDtoCopyWith<$Res> {
  factory _$$Fetch36HoursWeatherWeatherElementResponseDtoImplCopyWith(
          _$Fetch36HoursWeatherWeatherElementResponseDtoImpl value,
          $Res Function(_$Fetch36HoursWeatherWeatherElementResponseDtoImpl)
              then) =
      __$$Fetch36HoursWeatherWeatherElementResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? elementName, List<Fetch36HoursWeatherTimeResponseDto>? time});
}

/// @nodoc
class __$$Fetch36HoursWeatherWeatherElementResponseDtoImplCopyWithImpl<$Res>
    extends _$Fetch36HoursWeatherWeatherElementResponseDtoCopyWithImpl<$Res,
        _$Fetch36HoursWeatherWeatherElementResponseDtoImpl>
    implements
        _$$Fetch36HoursWeatherWeatherElementResponseDtoImplCopyWith<$Res> {
  __$$Fetch36HoursWeatherWeatherElementResponseDtoImplCopyWithImpl(
      _$Fetch36HoursWeatherWeatherElementResponseDtoImpl _value,
      $Res Function(_$Fetch36HoursWeatherWeatherElementResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elementName = freezed,
    Object? time = freezed,
  }) {
    return _then(_$Fetch36HoursWeatherWeatherElementResponseDtoImpl(
      elementName: freezed == elementName
          ? _value.elementName
          : elementName // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<Fetch36HoursWeatherTimeResponseDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Fetch36HoursWeatherWeatherElementResponseDtoImpl
    implements _Fetch36HoursWeatherWeatherElementResponseDto {
  _$Fetch36HoursWeatherWeatherElementResponseDtoImpl(
      {this.elementName, final List<Fetch36HoursWeatherTimeResponseDto>? time})
      : _time = time;

  factory _$Fetch36HoursWeatherWeatherElementResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$Fetch36HoursWeatherWeatherElementResponseDtoImplFromJson(json);

  @override
  final String? elementName;
  final List<Fetch36HoursWeatherTimeResponseDto>? _time;
  @override
  List<Fetch36HoursWeatherTimeResponseDto>? get time {
    final value = _time;
    if (value == null) return null;
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Fetch36HoursWeatherWeatherElementResponseDto(elementName: $elementName, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Fetch36HoursWeatherWeatherElementResponseDtoImpl &&
            (identical(other.elementName, elementName) ||
                other.elementName == elementName) &&
            const DeepCollectionEquality().equals(other._time, _time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, elementName, const DeepCollectionEquality().hash(_time));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Fetch36HoursWeatherWeatherElementResponseDtoImplCopyWith<
          _$Fetch36HoursWeatherWeatherElementResponseDtoImpl>
      get copyWith =>
          __$$Fetch36HoursWeatherWeatherElementResponseDtoImplCopyWithImpl<
                  _$Fetch36HoursWeatherWeatherElementResponseDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Fetch36HoursWeatherWeatherElementResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _Fetch36HoursWeatherWeatherElementResponseDto
    implements Fetch36HoursWeatherWeatherElementResponseDto {
  factory _Fetch36HoursWeatherWeatherElementResponseDto(
          {final String? elementName,
          final List<Fetch36HoursWeatherTimeResponseDto>? time}) =
      _$Fetch36HoursWeatherWeatherElementResponseDtoImpl;

  factory _Fetch36HoursWeatherWeatherElementResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$Fetch36HoursWeatherWeatherElementResponseDtoImpl.fromJson;

  @override
  String? get elementName;
  @override
  List<Fetch36HoursWeatherTimeResponseDto>? get time;
  @override
  @JsonKey(ignore: true)
  _$$Fetch36HoursWeatherWeatherElementResponseDtoImplCopyWith<
          _$Fetch36HoursWeatherWeatherElementResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
