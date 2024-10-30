import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rokas_work/domain/value_object/ramen_location.dart';

part 'ramen_map_state.freezed.dart';

@freezed
class RamenMapState with _$RamenMapState {
  factory RamenMapState({
    required Set<Marker> locationSet,
    required RamenLocation currentShop,
  }) = _RamenMapState;

  factory RamenMapState.init() => RamenMapState(
        locationSet: {},
        currentShop: RamenLocation.empty(),
      );
}
