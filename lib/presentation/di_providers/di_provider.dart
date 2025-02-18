import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:rokas_work/data/apis/weather_service/weather_api.dart';
import 'package:rokas_work/data/repository/auth_repository/authentication_repository_impl.dart';
import 'package:rokas_work/domain/repository/authentication_repository.dart';
import 'package:rokas_work/domain/usecase/login/login_usecase.dart';
import 'package:rokas_work/domain/usecase/weather/fetch_36_hours_weather_usecase.dart';
import 'package:rokas_work/presentation/pages/profifle/profile_notifier.dart';

import '../../data/apis/global_response_handler.dart';
import '../../data/repository/weather_repository_impl.dart';
import '../../domain/repository/weather_repository.dart';
import '../../domain/usecase/common/server_error.dart';
import '../../domain/usecase/weather/fetch_week_weather_usecase.dart';
import '../pages/1a2b/1a2b_notifier.dart';
import '../pages/1a2b/1a2b_state.dart';
import '../pages/cost/cost_notifier.dart';
import '../pages/cost/cost_state.dart';
import '../pages/home/home_notifier.dart';
import '../pages/home/home_state.dart';
import '../pages/login/login_notifier.dart';
import '../pages/login/login_state.dart';
import '../pages/memo/memo_list_notifier.dart';
import '../pages/memo/memo_list_state.dart';
import '../pages/music_player/music_player_notifier.dart';
import '../pages/music_player/music_player_state.dart';
import '../pages/profifle/profile_state.dart';
import '../pages/ramen_map/ramen_map_notifier.dart';
import '../pages/ramen_map/ramen_map_state.dart';
import '../pages/register/register_notifier.dart';
import '../pages/register/register_state.dart';
import '../pages/to_do/to_do_notifier.dart';
import '../pages/to_do/to_do_state.dart';
import '../pages/weather/weather_notifier.dart';
import '../pages/weather/weather_state.dart';
import '../routers/router.dart';

part "usecase_provider.dart";
part "repo_provider.dart";

final routerProvider = Provider<AppRouter>((ref) {
  return AppRouter();
});

final authRepoImplProvider = Provider<AuthenticationRepository>((ref) {
  return AuthRepoImpl(
    secureStorage: ref.read(securityStorageProvider),
  );
});

final securityStorageProvider = Provider<FlutterSecureStorage>((ref) {
  /// https://pub.dev/packages/flutter_secure_storage
  /// When using the encryptedSharedPreferences parameter on Android,
  /// make sure to pass the option to the constructor instead of the function
  return const FlutterSecureStorage();
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

final ramenMapStateNotifierProvider =
    StateNotifierProvider.autoDispose<RamenMapNotifier, RamenMapState>((ref) {
  return RamenMapNotifierImpl(
    appRouter: ref.read(routerProvider),
  );
});

final profileListStateNotifierProvider =
    StateNotifierProvider.autoDispose<ProfileNotifier, ProfileState>((ref) {
  return ProfileNotifierImpl(
    appRouter: ref.read(routerProvider),
  );
});

final oneAtwoBStateNotifierProvider =
    StateNotifierProvider.autoDispose<OneATwoBNotifier, OneATwoBState>((ref) {
  return OneATwoBNotifierImpl(
    appRouter: ref.read(routerProvider),
  );
});

final loginStateNotifierProvider =
    StateNotifierProvider.autoDispose<LoginNotifier, LoginState>((ref) {
  return LoginNotifierImpl(
    appRouter: ref.read(routerProvider),
    loginUseCase: ref.read(loginUseCaseProvider),
  );
});

final registerStateNotifierProvider =
    StateNotifierProvider.autoDispose<RegisterNotifier, RegisterState>((ref) {
  return RegisterNotifierImpl(
    appRouter: ref.read(routerProvider),
  );
});

final weatherStateNotifierProvider =
    StateNotifierProvider.autoDispose<WeatherNotifier, WeatherState>((ref) {
  return WeatherNotifierImpl(
      appRouter: ref.read(routerProvider),
      fetchWeekWeatherUseCase: ref.read(weekweatherUseCaseProvider),
      fetch36HoursWeatherUseCase:
          ref.read(thirtySixHoursWeatherUseCaseProvider));
});

final weatherApiProvider = Provider.autoDispose<WeatherApi>((ref) {
  return WeatherApi(
    Dio(),
  );
});

final serverErrorFactoryProvider = Provider<ServerErrorFactory>((ref) {
  return ServerErrorFactoryImpl();
});

final authRepoProvider = Provider.autoDispose<AuthenticationRepository>((ref) {
  return ref.read(authRepoImplProvider);
});
