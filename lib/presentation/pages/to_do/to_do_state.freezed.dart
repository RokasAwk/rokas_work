// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'to_do_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ToDoState {
  DateTime get currentTime => throw _privateConstructorUsedError;
  List<ToDoList> get toDoList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ToDoStateCopyWith<ToDoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDoStateCopyWith<$Res> {
  factory $ToDoStateCopyWith(ToDoState value, $Res Function(ToDoState) then) =
      _$ToDoStateCopyWithImpl<$Res, ToDoState>;
  @useResult
  $Res call({DateTime currentTime, List<ToDoList> toDoList});
}

/// @nodoc
class _$ToDoStateCopyWithImpl<$Res, $Val extends ToDoState>
    implements $ToDoStateCopyWith<$Res> {
  _$ToDoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTime = null,
    Object? toDoList = null,
  }) {
    return _then(_value.copyWith(
      currentTime: null == currentTime
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      toDoList: null == toDoList
          ? _value.toDoList
          : toDoList // ignore: cast_nullable_to_non_nullable
              as List<ToDoList>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToDoStateImplCopyWith<$Res>
    implements $ToDoStateCopyWith<$Res> {
  factory _$$ToDoStateImplCopyWith(
          _$ToDoStateImpl value, $Res Function(_$ToDoStateImpl) then) =
      __$$ToDoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime currentTime, List<ToDoList> toDoList});
}

/// @nodoc
class __$$ToDoStateImplCopyWithImpl<$Res>
    extends _$ToDoStateCopyWithImpl<$Res, _$ToDoStateImpl>
    implements _$$ToDoStateImplCopyWith<$Res> {
  __$$ToDoStateImplCopyWithImpl(
      _$ToDoStateImpl _value, $Res Function(_$ToDoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTime = null,
    Object? toDoList = null,
  }) {
    return _then(_$ToDoStateImpl(
      currentTime: null == currentTime
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      toDoList: null == toDoList
          ? _value._toDoList
          : toDoList // ignore: cast_nullable_to_non_nullable
              as List<ToDoList>,
    ));
  }
}

/// @nodoc

class _$ToDoStateImpl implements _ToDoState {
  _$ToDoStateImpl(
      {required this.currentTime, required final List<ToDoList> toDoList})
      : _toDoList = toDoList;

  @override
  final DateTime currentTime;
  final List<ToDoList> _toDoList;
  @override
  List<ToDoList> get toDoList {
    if (_toDoList is EqualUnmodifiableListView) return _toDoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_toDoList);
  }

  @override
  String toString() {
    return 'ToDoState(currentTime: $currentTime, toDoList: $toDoList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToDoStateImpl &&
            (identical(other.currentTime, currentTime) ||
                other.currentTime == currentTime) &&
            const DeepCollectionEquality().equals(other._toDoList, _toDoList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, currentTime, const DeepCollectionEquality().hash(_toDoList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToDoStateImplCopyWith<_$ToDoStateImpl> get copyWith =>
      __$$ToDoStateImplCopyWithImpl<_$ToDoStateImpl>(this, _$identity);
}

abstract class _ToDoState implements ToDoState {
  factory _ToDoState(
      {required final DateTime currentTime,
      required final List<ToDoList> toDoList}) = _$ToDoStateImpl;

  @override
  DateTime get currentTime;
  @override
  List<ToDoList> get toDoList;
  @override
  @JsonKey(ignore: true)
  _$$ToDoStateImplCopyWith<_$ToDoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
