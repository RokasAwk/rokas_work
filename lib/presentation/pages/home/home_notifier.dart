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
  void goToMemoListPage();
  void goToMusicPlayerPage();
  void goToCostPage();
  void goToRamenMapPage();
  void goToProfilePage();
  void goToOneATwoBPage();
  void goToLoginPage();
  void goToWeatherPage();

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
  void goToMemoListPage() {
    appRouter.push(const MemoListRoute());
  }

  @override
  void goToMusicPlayerPage() {
    appRouter.push(const MusicPlayerRoute());
  }

  @override
  void goToRamenMapPage() {
    appRouter.push(const RamenMapRoute());
  }

  @override
  void openDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  @override
  void goToCostPage() {
    appRouter.push(const CostRoute());
  }

  @override
  void goToProfilePage() {
    appRouter.push(const ProfileRoute());
  }

  @override
  void goToOneATwoBPage() {
    appRouter.push(const OneATwoBRoute());
  }

  @override
  void goToLoginPage() {
    appRouter.push(const LoginRoute());
  }

  @override
  void goToWeatherPage() {
    appRouter.push(const WeatherRoute());
  }
}
