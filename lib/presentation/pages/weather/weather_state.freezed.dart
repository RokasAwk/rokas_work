// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<WeekWeather> weekWeatherDataList,
            List<ThirtySixHoursWeather> thirtySixHoursWeatherDataList,
            String currentCity)
        success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<WeekWeather> weekWeatherDataList,
            List<ThirtySixHoursWeather> thirtySixHoursWeatherDataList,
            String currentCity)?
        success,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<WeekWeather> weekWeatherDataList,
            List<ThirtySixHoursWeather> thirtySixHoursWeatherDataList,
            String currentCity)?
        success,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  _$LoadingImpl();

  @override
  String toString() {
    return 'WeatherState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<WeekWeather> weekWeatherDataList,
            List<ThirtySixHoursWeather> thirtySixHoursWeatherDataList,
            String currentCity)
        success,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<WeekWeather> weekWeatherDataList,
            List<ThirtySixHoursWeather> thirtySixHoursWeatherDataList,
            String currentCity)?
        success,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<WeekWeather> weekWeatherDataList,
            List<ThirtySixHoursWeather> thirtySixHoursWeatherDataList,
            String currentCity)?
        success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements WeatherState {
  factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<WeekWeather> weekWeatherDataList,
      List<ThirtySixHoursWeather> thirtySixHoursWeatherDataList,
      String currentCity});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekWeatherDataList = null,
    Object? thirtySixHoursWeatherDataList = null,
    Object? currentCity = null,
  }) {
    return _then(_$SuccessImpl(
      weekWeatherDataList: null == weekWeatherDataList
          ? _value._weekWeatherDataList
          : weekWeatherDataList // ignore: cast_nullable_to_non_nullable
              as List<WeekWeather>,
      thirtySixHoursWeatherDataList: null == thirtySixHoursWeatherDataList
          ? _value._thirtySixHoursWeatherDataList
          : thirtySixHoursWeatherDataList // ignore: cast_nullable_to_non_nullable
              as List<ThirtySixHoursWeather>,
      currentCity: null == currentCity
          ? _value.currentCity
          : currentCity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  _$SuccessImpl(
      {required final List<WeekWeather> weekWeatherDataList,
      required final List<ThirtySixHoursWeather> thirtySixHoursWeatherDataList,
      required this.currentCity})
      : _weekWeatherDataList = weekWeatherDataList,
        _thirtySixHoursWeatherDataList = thirtySixHoursWeatherDataList;

  final List<WeekWeather> _weekWeatherDataList;
  @override
  List<WeekWeather> get weekWeatherDataList {
    if (_weekWeatherDataList is EqualUnmodifiableListView)
      return _weekWeatherDataList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weekWeatherDataList);
  }

  final List<ThirtySixHoursWeather> _thirtySixHoursWeatherDataList;
  @override
  List<ThirtySixHoursWeather> get thirtySixHoursWeatherDataList {
    if (_thirtySixHoursWeatherDataList is EqualUnmodifiableListView)
      return _thirtySixHoursWeatherDataList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_thirtySixHoursWeatherDataList);
  }

  @override
  final String currentCity;

  @override
  String toString() {
    return 'WeatherState.success(weekWeatherDataList: $weekWeatherDataList, thirtySixHoursWeatherDataList: $thirtySixHoursWeatherDataList, currentCity: $currentCity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._weekWeatherDataList, _weekWeatherDataList) &&
            const DeepCollectionEquality().equals(
                other._thirtySixHoursWeatherDataList,
                _thirtySixHoursWeatherDataList) &&
            (identical(other.currentCity, currentCity) ||
                other.currentCity == currentCity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_weekWeatherDataList),
      const DeepCollectionEquality().hash(_thirtySixHoursWeatherDataList),
      currentCity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<WeekWeather> weekWeatherDataList,
            List<ThirtySixHoursWeather> thirtySixHoursWeatherDataList,
            String currentCity)
        success,
    required TResult Function() error,
  }) {
    return success(
        weekWeatherDataList, thirtySixHoursWeatherDataList, currentCity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<WeekWeather> weekWeatherDataList,
            List<ThirtySixHoursWeather> thirtySixHoursWeatherDataList,
            String currentCity)?
        success,
    TResult? Function()? error,
  }) {
    return success?.call(
        weekWeatherDataList, thirtySixHoursWeatherDataList, currentCity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<WeekWeather> weekWeatherDataList,
            List<ThirtySixHoursWeather> thirtySixHoursWeatherDataList,
            String currentCity)?
        success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(
          weekWeatherDataList, thirtySixHoursWeatherDataList, currentCity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements WeatherState {
  factory Success(
      {required final List<WeekWeather> weekWeatherDataList,
      required final List<ThirtySixHoursWeather> thirtySixHoursWeatherDataList,
      required final String currentCity}) = _$SuccessImpl;

  List<WeekWeather> get weekWeatherDataList;
  List<ThirtySixHoursWeather> get thirtySixHoursWeatherDataList;
  String get currentCity;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorImpl implements Error {
  _$ErrorImpl();

  @override
  String toString() {
    return 'WeatherState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<WeekWeather> weekWeatherDataList,
            List<ThirtySixHoursWeather> thirtySixHoursWeatherDataList,
            String currentCity)
        success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<WeekWeather> weekWeatherDataList,
            List<ThirtySixHoursWeather> thirtySixHoursWeatherDataList,
            String currentCity)?
        success,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<WeekWeather> weekWeatherDataList,
            List<ThirtySixHoursWeather> thirtySixHoursWeatherDataList,
            String currentCity)?
        success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements WeatherState {
  factory Error() = _$ErrorImpl;
}
