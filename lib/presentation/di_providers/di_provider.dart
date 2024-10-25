import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../pages/cost/cost_notifier.dart';
import '../pages/cost/cost_state.dart';
import '../pages/home/home_notifier.dart';
import '../pages/home/home_state.dart';
import '../pages/memo/memo_list_notifier.dart';
import '../pages/memo/memo_list_state.dart';
import '../pages/music_player/music_player_notifier.dart';
import '../pages/music_player/music_player_state.dart';
import '../pages/to_do/to_do_notifier.dart';
import '../pages/to_do/to_do_state.dart';
import '../routers/router.dart';

final routerProvider = Provider<AppRouter>((ref) {
  return AppRouter();
});

final homeStateNotifierProvider =
    StateNotifierProvider.autoDispose<HomeNotifier, HomeState>((ref) {
  return HomeNotifierImpl(
    appRouter: ref.read(routerProvider),
  );
});

final toDoStateNotifierProvider =
    StateNotifierProvider.autoDispose<ToDoNotifier, ToDoState>((ref) {
  return ToDoNotifierImpl(
    appRouter: ref.read(routerProvider),
  );
});

final musicPlayerStateNotifierProvider =
    StateNotifierProvider.autoDispose<MusicPlayerNotifier, MusicPlayerState>(
        (ref) {
  return MusicPlayerNotifierImpl(
    appRouter: ref.read(routerProvider),
  );
});

final costStateNotifierProvider =
    StateNotifierProvider.autoDispose<CostNotifier, CostState>((ref) {
  return CostNotifierImpl(
    appRouter: ref.read(routerProvider),
  );
});

final memoListStateNotifierProvider =
    StateNotifierProvider.autoDispose<MemoListNotifier, MemoListState>((ref) {
  return MemoListNotifierImpl(
    appRouter: ref.read(routerProvider),
  );
});
