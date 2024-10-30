// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ramen_map_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RamenMapState {
  Set<Marker> get locationSet => throw _privateConstructorUsedError;
  RamenLocation get currentShop => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RamenMapStateCopyWith<RamenMapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RamenMapStateCopyWith<$Res> {
  factory $RamenMapStateCopyWith(
          RamenMapState value, $Res Function(RamenMapState) then) =
      _$RamenMapStateCopyWithImpl<$Res, RamenMapState>;
  @useResult
  $Res call({Set<Marker> locationSet, RamenLocation currentShop});
}

/// @nodoc
class _$RamenMapStateCopyWithImpl<$Res, $Val extends RamenMapState>
    implements $RamenMapStateCopyWith<$Res> {
  _$RamenMapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationSet = null,
    Object? currentShop = null,
  }) {
    return _then(_value.copyWith(
      locationSet: null == locationSet
          ? _value.locationSet
          : locationSet // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
      currentShop: null == currentShop
          ? _value.currentShop
          : currentShop // ignore: cast_nullable_to_non_nullable
              as RamenLocation,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RamenMapStateImplCopyWith<$Res>
    implements $RamenMapStateCopyWith<$Res> {
  factory _$$RamenMapStateImplCopyWith(
          _$RamenMapStateImpl value, $Res Function(_$RamenMapStateImpl) then) =
      __$$RamenMapStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Set<Marker> locationSet, RamenLocation currentShop});
}

/// @nodoc
class __$$RamenMapStateImplCopyWithImpl<$Res>
    extends _$RamenMapStateCopyWithImpl<$Res, _$RamenMapStateImpl>
    implements _$$RamenMapStateImplCopyWith<$Res> {
  __$$RamenMapStateImplCopyWithImpl(
      _$RamenMapStateImpl _value, $Res Function(_$RamenMapStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationSet = null,
    Object? currentShop = null,
  }) {
    return _then(_$RamenMapStateImpl(
      locationSet: null == locationSet
          ? _value._locationSet
          : locationSet // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
      currentShop: null == currentShop
          ? _value.currentShop
          : currentShop // ignore: cast_nullable_to_non_nullable
              as RamenLocation,
    ));
  }
}

/// @nodoc

class _$RamenMapStateImpl implements _RamenMapState {
  _$RamenMapStateImpl(
      {required final Set<Marker> locationSet, required this.currentShop})
      : _locationSet = locationSet;

  final Set<Marker> _locationSet;
  @override
  Set<Marker> get locationSet {
    if (_locationSet is EqualUnmodifiableSetView) return _locationSet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_locationSet);
  }

  @override
  final RamenLocation currentShop;

  @override
  String toString() {
    return 'RamenMapState(locationSet: $locationSet, currentShop: $currentShop)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RamenMapStateImpl &&
            const DeepCollectionEquality()
                .equals(other._locationSet, _locationSet) &&
            (identical(other.currentShop, currentShop) ||
                other.currentShop == currentShop));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_locationSet), currentShop);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RamenMapStateImplCopyWith<_$RamenMapStateImpl> get copyWith =>
      __$$RamenMapStateImplCopyWithImpl<_$RamenMapStateImpl>(this, _$identity);
}

abstract class _RamenMapState implements RamenMapState {
  factory _RamenMapState(
      {required final Set<Marker> locationSet,
      required final RamenLocation currentShop}) = _$RamenMapStateImpl;

  @override
  Set<Marker> get locationSet;
  @override
  RamenLocation get currentShop;
  @override
  @JsonKey(ignore: true)
  _$$RamenMapStateImplCopyWith<_$RamenMapStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
