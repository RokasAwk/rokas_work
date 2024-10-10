import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    required DateTime currentTime,
  }) = _HomeState;

  factory HomeState.init() => HomeState(
        currentTime: DateTime.now(),
      );
}
