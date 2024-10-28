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
  List<String> get locationKeyList => throw _privateConstructorUsedError;

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
  $Res call({List<String> locationKeyList});
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
    Object? locationKeyList = null,
  }) {
    return _then(_value.copyWith(
      locationKeyList: null == locationKeyList
          ? _value.locationKeyList
          : locationKeyList // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
  $Res call({List<String> locationKeyList});
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
    Object? locationKeyList = null,
  }) {
    return _then(_$RamenMapStateImpl(
      locationKeyList: null == locationKeyList
          ? _value._locationKeyList
          : locationKeyList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$RamenMapStateImpl implements _RamenMapState {
  _$RamenMapStateImpl({required final List<String> locationKeyList})
      : _locationKeyList = locationKeyList;

  final List<String> _locationKeyList;
  @override
  List<String> get locationKeyList {
    if (_locationKeyList is EqualUnmodifiableListView) return _locationKeyList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locationKeyList);
  }

  @override
  String toString() {
    return 'RamenMapState(locationKeyList: $locationKeyList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RamenMapStateImpl &&
            const DeepCollectionEquality()
                .equals(other._locationKeyList, _locationKeyList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_locationKeyList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RamenMapStateImplCopyWith<_$RamenMapStateImpl> get copyWith =>
      __$$RamenMapStateImplCopyWithImpl<_$RamenMapStateImpl>(this, _$identity);
}

abstract class _RamenMapState implements RamenMapState {
  factory _RamenMapState({required final List<String> locationKeyList}) =
      _$RamenMapStateImpl;

  @override
  List<String> get locationKeyList;
  @override
  @JsonKey(ignore: true)
  _$$RamenMapStateImplCopyWith<_$RamenMapStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
