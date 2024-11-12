// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState {
  DateTime get currentTime => throw _privateConstructorUsedError;
  Decimal get totalCost => throw _privateConstructorUsedError;
  Decimal get lastMonthCost => throw _privateConstructorUsedError;
  Decimal get currentMonthCost => throw _privateConstructorUsedError;
  Decimal get costChangeRate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {DateTime currentTime,
      Decimal totalCost,
      Decimal lastMonthCost,
      Decimal currentMonthCost,
      Decimal costChangeRate});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTime = null,
    Object? totalCost = null,
    Object? lastMonthCost = null,
    Object? currentMonthCost = null,
    Object? costChangeRate = null,
  }) {
    return _then(_value.copyWith(
      currentTime: null == currentTime
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalCost: null == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as Decimal,
      lastMonthCost: null == lastMonthCost
          ? _value.lastMonthCost
          : lastMonthCost // ignore: cast_nullable_to_non_nullable
              as Decimal,
      currentMonthCost: null == currentMonthCost
          ? _value.currentMonthCost
          : currentMonthCost // ignore: cast_nullable_to_non_nullable
              as Decimal,
      costChangeRate: null == costChangeRate
          ? _value.costChangeRate
          : costChangeRate // ignore: cast_nullable_to_non_nullable
              as Decimal,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime currentTime,
      Decimal totalCost,
      Decimal lastMonthCost,
      Decimal currentMonthCost,
      Decimal costChangeRate});
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTime = null,
    Object? totalCost = null,
    Object? lastMonthCost = null,
    Object? currentMonthCost = null,
    Object? costChangeRate = null,
  }) {
    return _then(_$LoginStateImpl(
      currentTime: null == currentTime
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalCost: null == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as Decimal,
      lastMonthCost: null == lastMonthCost
          ? _value.lastMonthCost
          : lastMonthCost // ignore: cast_nullable_to_non_nullable
              as Decimal,
      currentMonthCost: null == currentMonthCost
          ? _value.currentMonthCost
          : currentMonthCost // ignore: cast_nullable_to_non_nullable
              as Decimal,
      costChangeRate: null == costChangeRate
          ? _value.costChangeRate
          : costChangeRate // ignore: cast_nullable_to_non_nullable
              as Decimal,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl implements _LoginState {
  _$LoginStateImpl(
      {required this.currentTime,
      required this.totalCost,
      required this.lastMonthCost,
      required this.currentMonthCost,
      required this.costChangeRate});

  @override
  final DateTime currentTime;
  @override
  final Decimal totalCost;
  @override
  final Decimal lastMonthCost;
  @override
  final Decimal currentMonthCost;
  @override
  final Decimal costChangeRate;

  @override
  String toString() {
    return 'LoginState(currentTime: $currentTime, totalCost: $totalCost, lastMonthCost: $lastMonthCost, currentMonthCost: $currentMonthCost, costChangeRate: $costChangeRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.currentTime, currentTime) ||
                other.currentTime == currentTime) &&
            (identical(other.totalCost, totalCost) ||
                other.totalCost == totalCost) &&
            (identical(other.lastMonthCost, lastMonthCost) ||
                other.lastMonthCost == lastMonthCost) &&
            (identical(other.currentMonthCost, currentMonthCost) ||
                other.currentMonthCost == currentMonthCost) &&
            (identical(other.costChangeRate, costChangeRate) ||
                other.costChangeRate == costChangeRate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentTime, totalCost,
      lastMonthCost, currentMonthCost, costChangeRate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  factory _LoginState(
      {required final DateTime currentTime,
      required final Decimal totalCost,
      required final Decimal lastMonthCost,
      required final Decimal currentMonthCost,
      required final Decimal costChangeRate}) = _$LoginStateImpl;

  @override
  DateTime get currentTime;
  @override
  Decimal get totalCost;
  @override
  Decimal get lastMonthCost;
  @override
  Decimal get currentMonthCost;
  @override
  Decimal get costChangeRate;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
