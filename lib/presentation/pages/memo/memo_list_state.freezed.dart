// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'memo_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MemoListState {
  List<Memo> get memoList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MemoListStateCopyWith<MemoListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoListStateCopyWith<$Res> {
  factory $MemoListStateCopyWith(
          MemoListState value, $Res Function(MemoListState) then) =
      _$MemoListStateCopyWithImpl<$Res, MemoListState>;
  @useResult
  $Res call({List<Memo> memoList});
}

/// @nodoc
class _$MemoListStateCopyWithImpl<$Res, $Val extends MemoListState>
    implements $MemoListStateCopyWith<$Res> {
  _$MemoListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memoList = null,
  }) {
    return _then(_value.copyWith(
      memoList: null == memoList
          ? _value.memoList
          : memoList // ignore: cast_nullable_to_non_nullable
              as List<Memo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemoListStateImplCopyWith<$Res>
    implements $MemoListStateCopyWith<$Res> {
  factory _$$MemoListStateImplCopyWith(
          _$MemoListStateImpl value, $Res Function(_$MemoListStateImpl) then) =
      __$$MemoListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Memo> memoList});
}

/// @nodoc
class __$$MemoListStateImplCopyWithImpl<$Res>
    extends _$MemoListStateCopyWithImpl<$Res, _$MemoListStateImpl>
    implements _$$MemoListStateImplCopyWith<$Res> {
  __$$MemoListStateImplCopyWithImpl(
      _$MemoListStateImpl _value, $Res Function(_$MemoListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memoList = null,
  }) {
    return _then(_$MemoListStateImpl(
      memoList: null == memoList
          ? _value._memoList
          : memoList // ignore: cast_nullable_to_non_nullable
              as List<Memo>,
    ));
  }
}

/// @nodoc

class _$MemoListStateImpl implements _MemoListState {
  _$MemoListStateImpl({required final List<Memo> memoList})
      : _memoList = memoList;

  final List<Memo> _memoList;
  @override
  List<Memo> get memoList {
    if (_memoList is EqualUnmodifiableListView) return _memoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_memoList);
  }

  @override
  String toString() {
    return 'MemoListState(memoList: $memoList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemoListStateImpl &&
            const DeepCollectionEquality().equals(other._memoList, _memoList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_memoList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemoListStateImplCopyWith<_$MemoListStateImpl> get copyWith =>
      __$$MemoListStateImplCopyWithImpl<_$MemoListStateImpl>(this, _$identity);
}

abstract class _MemoListState implements MemoListState {
  factory _MemoListState({required final List<Memo> memoList}) =
      _$MemoListStateImpl;

  @override
  List<Memo> get memoList;
  @override
  @JsonKey(ignore: true)
  _$$MemoListStateImplCopyWith<_$MemoListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
