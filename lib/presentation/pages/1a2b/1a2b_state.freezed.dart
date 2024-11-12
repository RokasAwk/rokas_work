// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '1a2b_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OneATwoBState {
  List<String> get radomAnswer => throw _privateConstructorUsedError;
  int get aCount => throw _privateConstructorUsedError; // 數字跟位置都正確
  int get bCount => throw _privateConstructorUsedError; // 數字正確、位置錯誤
  int get tryCount => throw _privateConstructorUsedError; // 猜的次數
  List<String> get guessList => throw _privateConstructorUsedError; // 猜過的組合
  List<String> get tryCountList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OneATwoBStateCopyWith<OneATwoBState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneATwoBStateCopyWith<$Res> {
  factory $OneATwoBStateCopyWith(
          OneATwoBState value, $Res Function(OneATwoBState) then) =
      _$OneATwoBStateCopyWithImpl<$Res, OneATwoBState>;
  @useResult
  $Res call(
      {List<String> radomAnswer,
      int aCount,
      int bCount,
      int tryCount,
      List<String> guessList,
      List<String> tryCountList});
}

/// @nodoc
class _$OneATwoBStateCopyWithImpl<$Res, $Val extends OneATwoBState>
    implements $OneATwoBStateCopyWith<$Res> {
  _$OneATwoBStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? radomAnswer = null,
    Object? aCount = null,
    Object? bCount = null,
    Object? tryCount = null,
    Object? guessList = null,
    Object? tryCountList = null,
  }) {
    return _then(_value.copyWith(
      radomAnswer: null == radomAnswer
          ? _value.radomAnswer
          : radomAnswer // ignore: cast_nullable_to_non_nullable
              as List<String>,
      aCount: null == aCount
          ? _value.aCount
          : aCount // ignore: cast_nullable_to_non_nullable
              as int,
      bCount: null == bCount
          ? _value.bCount
          : bCount // ignore: cast_nullable_to_non_nullable
              as int,
      tryCount: null == tryCount
          ? _value.tryCount
          : tryCount // ignore: cast_nullable_to_non_nullable
              as int,
      guessList: null == guessList
          ? _value.guessList
          : guessList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tryCountList: null == tryCountList
          ? _value.tryCountList
          : tryCountList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OneATwoBStateImplCopyWith<$Res>
    implements $OneATwoBStateCopyWith<$Res> {
  factory _$$OneATwoBStateImplCopyWith(
          _$OneATwoBStateImpl value, $Res Function(_$OneATwoBStateImpl) then) =
      __$$OneATwoBStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> radomAnswer,
      int aCount,
      int bCount,
      int tryCount,
      List<String> guessList,
      List<String> tryCountList});
}

/// @nodoc
class __$$OneATwoBStateImplCopyWithImpl<$Res>
    extends _$OneATwoBStateCopyWithImpl<$Res, _$OneATwoBStateImpl>
    implements _$$OneATwoBStateImplCopyWith<$Res> {
  __$$OneATwoBStateImplCopyWithImpl(
      _$OneATwoBStateImpl _value, $Res Function(_$OneATwoBStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? radomAnswer = null,
    Object? aCount = null,
    Object? bCount = null,
    Object? tryCount = null,
    Object? guessList = null,
    Object? tryCountList = null,
  }) {
    return _then(_$OneATwoBStateImpl(
      radomAnswer: null == radomAnswer
          ? _value._radomAnswer
          : radomAnswer // ignore: cast_nullable_to_non_nullable
              as List<String>,
      aCount: null == aCount
          ? _value.aCount
          : aCount // ignore: cast_nullable_to_non_nullable
              as int,
      bCount: null == bCount
          ? _value.bCount
          : bCount // ignore: cast_nullable_to_non_nullable
              as int,
      tryCount: null == tryCount
          ? _value.tryCount
          : tryCount // ignore: cast_nullable_to_non_nullable
              as int,
      guessList: null == guessList
          ? _value._guessList
          : guessList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tryCountList: null == tryCountList
          ? _value._tryCountList
          : tryCountList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$OneATwoBStateImpl implements _OneATwoBState {
  _$OneATwoBStateImpl(
      {required final List<String> radomAnswer,
      required this.aCount,
      required this.bCount,
      required this.tryCount,
      required final List<String> guessList,
      required final List<String> tryCountList})
      : _radomAnswer = radomAnswer,
        _guessList = guessList,
        _tryCountList = tryCountList;

  final List<String> _radomAnswer;
  @override
  List<String> get radomAnswer {
    if (_radomAnswer is EqualUnmodifiableListView) return _radomAnswer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_radomAnswer);
  }

  @override
  final int aCount;
// 數字跟位置都正確
  @override
  final int bCount;
// 數字正確、位置錯誤
  @override
  final int tryCount;
// 猜的次數
  final List<String> _guessList;
// 猜的次數
  @override
  List<String> get guessList {
    if (_guessList is EqualUnmodifiableListView) return _guessList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_guessList);
  }

// 猜過的組合
  final List<String> _tryCountList;
// 猜過的組合
  @override
  List<String> get tryCountList {
    if (_tryCountList is EqualUnmodifiableListView) return _tryCountList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tryCountList);
  }

  @override
  String toString() {
    return 'OneATwoBState(radomAnswer: $radomAnswer, aCount: $aCount, bCount: $bCount, tryCount: $tryCount, guessList: $guessList, tryCountList: $tryCountList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OneATwoBStateImpl &&
            const DeepCollectionEquality()
                .equals(other._radomAnswer, _radomAnswer) &&
            (identical(other.aCount, aCount) || other.aCount == aCount) &&
            (identical(other.bCount, bCount) || other.bCount == bCount) &&
            (identical(other.tryCount, tryCount) ||
                other.tryCount == tryCount) &&
            const DeepCollectionEquality()
                .equals(other._guessList, _guessList) &&
            const DeepCollectionEquality()
                .equals(other._tryCountList, _tryCountList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_radomAnswer),
      aCount,
      bCount,
      tryCount,
      const DeepCollectionEquality().hash(_guessList),
      const DeepCollectionEquality().hash(_tryCountList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OneATwoBStateImplCopyWith<_$OneATwoBStateImpl> get copyWith =>
      __$$OneATwoBStateImplCopyWithImpl<_$OneATwoBStateImpl>(this, _$identity);
}

abstract class _OneATwoBState implements OneATwoBState {
  factory _OneATwoBState(
      {required final List<String> radomAnswer,
      required final int aCount,
      required final int bCount,
      required final int tryCount,
      required final List<String> guessList,
      required final List<String> tryCountList}) = _$OneATwoBStateImpl;

  @override
  List<String> get radomAnswer;
  @override
  int get aCount;
  @override // 數字跟位置都正確
  int get bCount;
  @override // 數字正確、位置錯誤
  int get tryCount;
  @override // 猜的次數
  List<String> get guessList;
  @override // 猜過的組合
  List<String> get tryCountList;
  @override
  @JsonKey(ignore: true)
  _$$OneATwoBStateImplCopyWith<_$OneATwoBStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
