import 'package:freezed_annotation/freezed_annotation.dart';

part 'music_player_state.freezed.dart';

@freezed
class MusicPlayerState with _$MusicPlayerState {
  factory MusicPlayerState({
    required DateTime currentTime,
  }) = _MusicPlayerState;

  factory MusicPlayerState.init() => MusicPlayerState(
        currentTime: DateTime.now(),
      );
}
