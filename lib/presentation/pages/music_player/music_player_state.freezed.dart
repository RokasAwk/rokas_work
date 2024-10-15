// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'music_player_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MusicPlayerState {
  DateTime get currentTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MusicPlayerStateCopyWith<MusicPlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicPlayerStateCopyWith<$Res> {
  factory $MusicPlayerStateCopyWith(
          MusicPlayerState value, $Res Function(MusicPlayerState) then) =
      _$MusicPlayerStateCopyWithImpl<$Res, MusicPlayerState>;
  @useResult
  $Res call({DateTime currentTime});
}

/// @nodoc
class _$MusicPlayerStateCopyWithImpl<$Res, $Val extends MusicPlayerState>
    implements $MusicPlayerStateCopyWith<$Res> {
  _$MusicPlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTime = null,
  }) {
    return _then(_value.copyWith(
      currentTime: null == currentTime
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MusicPlayerStateImplCopyWith<$Res>
    implements $MusicPlayerStateCopyWith<$Res> {
  factory _$$MusicPlayerStateImplCopyWith(_$MusicPlayerStateImpl value,
          $Res Function(_$MusicPlayerStateImpl) then) =
      __$$MusicPlayerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime currentTime});
}

/// @nodoc
class __$$MusicPlayerStateImplCopyWithImpl<$Res>
    extends _$MusicPlayerStateCopyWithImpl<$Res, _$MusicPlayerStateImpl>
    implements _$$MusicPlayerStateImplCopyWith<$Res> {
  __$$MusicPlayerStateImplCopyWithImpl(_$MusicPlayerStateImpl _value,
      $Res Function(_$MusicPlayerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTime = null,
  }) {
    return _then(_$MusicPlayerStateImpl(
      currentTime: null == currentTime
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$MusicPlayerStateImpl implements _MusicPlayerState {
  _$MusicPlayerStateImpl({required this.currentTime});

  @override
  final DateTime currentTime;

  @override
  String toString() {
    return 'MusicPlayerState(currentTime: $currentTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MusicPlayerStateImpl &&
            (identical(other.currentTime, currentTime) ||
                other.currentTime == currentTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MusicPlayerStateImplCopyWith<_$MusicPlayerStateImpl> get copyWith =>
      __$$MusicPlayerStateImplCopyWithImpl<_$MusicPlayerStateImpl>(
          this, _$identity);
}

abstract class _MusicPlayerState implements MusicPlayerState {
  factory _MusicPlayerState({required final DateTime currentTime}) =
      _$MusicPlayerStateImpl;

  @override
  DateTime get currentTime;
  @override
  @JsonKey(ignore: true)
  _$$MusicPlayerStateImplCopyWith<_$MusicPlayerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
