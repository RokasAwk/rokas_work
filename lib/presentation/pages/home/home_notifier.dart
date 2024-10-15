import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../routers/router.dart';
import 'home_state.dart';

abstract class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier(super.state);

  void updateCurrentTime({
    required DateTime currentTime,
  });
  void goToToDoPage();
  void goToMusicPlayerPage();

  void openDrawer(BuildContext context);
}

class HomeNotifierImpl extends HomeNotifier {
  final AppRouter appRouter;

  HomeNotifierImpl({
    required this.appRouter,
  }) : super(HomeState.init());

  @override
  void updateCurrentTime({
    required DateTime currentTime,
  }) {
    state = state.copyWith(currentTime: currentTime);
  }

  @override
  void goToToDoPage() {
    appRouter.push(const ToDoRoute());
  }

  @override
  void goToMusicPlayerPage() {
    appRouter.push(const MusicPlayerRoute());
  }

  @override
  void openDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }
}
