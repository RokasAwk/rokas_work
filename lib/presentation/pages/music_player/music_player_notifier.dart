import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../routers/router.dart';
import 'music_player_state.dart';

abstract class MusicPlayerNotifier extends StateNotifier<MusicPlayerState> {
  MusicPlayerNotifier(super.state);
}

class MusicPlayerNotifierImpl extends MusicPlayerNotifier {
  final AppRouter appRouter;

  MusicPlayerNotifierImpl({
    required this.appRouter,
  }) : super(MusicPlayerState.init());
}
