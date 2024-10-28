import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../routers/router.dart';
import 'ramen_map_state.dart';

abstract class RamenMapNotifier extends StateNotifier<RamenMapState> {
  RamenMapNotifier(super.state);

  void updateLocationKeyList({
    required List<String> locationKeyList,
  });
}

class RamenMapNotifierImpl extends RamenMapNotifier {
  final AppRouter appRouter;

  RamenMapNotifierImpl({
    required this.appRouter,
  }) : super(RamenMapState.init());

  @override
  void updateLocationKeyList({
    required List<String> locationKeyList,
  }) {
    state = state.copyWith(locationKeyList: locationKeyList);
  }
}
