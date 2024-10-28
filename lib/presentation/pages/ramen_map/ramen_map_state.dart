import 'package:freezed_annotation/freezed_annotation.dart';

part 'ramen_map_state.freezed.dart';

@freezed
class RamenMapState with _$RamenMapState {
  factory RamenMapState({
    required List<String> locationKeyList,
  }) = _RamenMapState;

  factory RamenMapState.init() => RamenMapState(
        locationKeyList: [],
      );
}
