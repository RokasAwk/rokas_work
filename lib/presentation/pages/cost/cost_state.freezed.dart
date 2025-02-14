// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cost_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CostState {
  Decimal get totalCost => throw _privateConstructorUsedError;
  Decimal get lastMonthCost => throw _privateConstructorUsedError;
  Decimal get currentMonthCost => throw _privateConstructorUsedError;
  Decimal get costChangeRate => throw _privateConstructorUsedError;
  String get currentCostType => throw _privateConstructorUsedError;
  List<CostInfo> get costList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CostStateCopyWith<CostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CostStateCopyWith<$Res> {
  factory $CostStateCopyWith(CostState value, $Res Function(CostState) then) =
      _$CostStateCopyWithImpl<$Res, CostState>;
  @useResult
  $Res call(
      {Decimal totalCost,
      Decimal lastMonthCost,
      Decimal currentMonthCost,
      Decimal costChangeRate,
      String currentCostType,
      List<CostInfo> costList});
}

/// @nodoc
class _$CostStateCopyWithImpl<$Res, $Val extends CostState>
    implements $CostStateCopyWith<$Res> {
  _$CostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCost = null,
    Object? lastMonthCost = null,
    Object? currentMonthCost = null,
    Object? costChangeRate = null,
    Object? currentCostType = null,
    Object? costList = null,
  }) {
    return _then(_value.copyWith(
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
      currentCostType: null == currentCostType
          ? _value.currentCostType
          : currentCostType // ignore: cast_nullable_to_non_nullable
              as String,
      costList: null == costList
          ? _value.costList
          : costList // ignore: cast_nullable_to_non_nullable
              as List<CostInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CostStateImplCopyWith<$Res>
    implements $CostStateCopyWith<$Res> {
  factory _$$CostStateImplCopyWith(
          _$CostStateImpl value, $Res Function(_$CostStateImpl) then) =
      __$$CostStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Decimal totalCost,
      Decimal lastMonthCost,
      Decimal currentMonthCost,
      Decimal costChangeRate,
      String currentCostType,
      List<CostInfo> costList});
}

/// @nodoc
class __$$CostStateImplCopyWithImpl<$Res>
    extends _$CostStateCopyWithImpl<$Res, _$CostStateImpl>
    implements _$$CostStateImplCopyWith<$Res> {
  __$$CostStateImplCopyWithImpl(
      _$CostStateImpl _value, $Res Function(_$CostStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCost = null,
    Object? lastMonthCost = null,
    Object? currentMonthCost = null,
    Object? costChangeRate = null,
    Object? currentCostType = null,
    Object? costList = null,
  }) {
    return _then(_$CostStateImpl(
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
      currentCostType: null == currentCostType
          ? _value.currentCostType
          : currentCostType // ignore: cast_nullable_to_non_nullable
              as String,
      costList: null == costList
          ? _value._costList
          : costList // ignore: cast_nullable_to_non_nullable
              as List<CostInfo>,
    ));
  }
}

/// @nodoc

class _$CostStateImpl implements _CostState {
  _$CostStateImpl(
      {required this.totalCost,
      required this.lastMonthCost,
      required this.currentMonthCost,
      required this.costChangeRate,
      required this.currentCostType,
      required final List<CostInfo> costList})
      : _costList = costList;

  @override
  final Decimal totalCost;
  @override
  final Decimal lastMonthCost;
  @override
  final Decimal currentMonthCost;
  @override
  final Decimal costChangeRate;
  @override
  final String currentCostType;
  final List<CostInfo> _costList;
  @override
  List<CostInfo> get costList {
    if (_costList is EqualUnmodifiableListView) return _costList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_costList);
  }

  @override
  String toString() {
    return 'CostState(totalCost: $totalCost, lastMonthCost: $lastMonthCost, currentMonthCost: $currentMonthCost, costChangeRate: $costChangeRate, currentCostType: $currentCostType, costList: $costList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CostStateImpl &&
            (identical(other.totalCost, totalCost) ||
                other.totalCost == totalCost) &&
            (identical(other.lastMonthCost, lastMonthCost) ||
                other.lastMonthCost == lastMonthCost) &&
            (identical(other.currentMonthCost, currentMonthCost) ||
                other.currentMonthCost == currentMonthCost) &&
            (identical(other.costChangeRate, costChangeRate) ||
                other.costChangeRate == costChangeRate) &&
            (identical(other.currentCostType, currentCostType) ||
                other.currentCostType == currentCostType) &&
            const DeepCollectionEquality().equals(other._costList, _costList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalCost,
      lastMonthCost,
      currentMonthCost,
      costChangeRate,
      currentCostType,
      const DeepCollectionEquality().hash(_costList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CostStateImplCopyWith<_$CostStateImpl> get copyWith =>
      __$$CostStateImplCopyWithImpl<_$CostStateImpl>(this, _$identity);
}

abstract class _CostState implements CostState {
  factory _CostState(
      {required final Decimal totalCost,
      required final Decimal lastMonthCost,
      required final Decimal currentMonthCost,
      required final Decimal costChangeRate,
      required final String currentCostType,
      required final List<CostInfo> costList}) = _$CostStateImpl;

  @override
  Decimal get totalCost;
  @override
  Decimal get lastMonthCost;
  @override
  Decimal get currentMonthCost;
  @override
  Decimal get costChangeRate;
  @override
  String get currentCostType;
  @override
  List<CostInfo> get costList;
  @override
  @JsonKey(ignore: true)
  _$$CostStateImplCopyWith<_$CostStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
