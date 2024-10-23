import 'package:freezed_annotation/freezed_annotation.dart';

part 'music_player_state.freezed.dart';

@freezed
class MusicPlayerState with _$MusicPlayerState {
  factory MusicPlayerState({
    required List<String> videoList,
  }) = _MusicPlayerState;

  factory MusicPlayerState.init() => MusicPlayerState(
        videoList: [
          '2IeWmLcOSB0',
          'xFGHzTG3Cek',
          'lc6kZeDu3to',
          'fjjcBqHUClU',
          '1VmT-9d_FoA',
          'VtjIwvXsfMI',
          'WX8Ja362cFA',
          'vPMPlJQVrM4',
          'Z74SRAY412I',
          'Zp50fG721ko',
          'Q2hoydubmQ4',
          'HcDr9Mppw_I',
          'Y7BTWvR0Dr8',
          'iDKp-r7wSkQ',
          'r3FFOl-LAM8',
          'F67oeSVgo5Y'
        ],
      );
}
