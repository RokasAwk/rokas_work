part of "di_provider.dart";

final weekweatherUseCaseProvider =
    Provider.autoDispose<FetchWeekWeatherUseCase>((ref) {
  return FetchWeekWeatherUseCase(
    weatherRepo: ref.watch(weekWeatherRepoProvider),
    serverErrorFactory: ref.read(serverErrorFactoryProvider),
  );
});

final thirtySixHoursWeatherUseCaseProvider =
    Provider.autoDispose<Fetch36HoursWeatherUseCase>((ref) {
  return Fetch36HoursWeatherUseCase(
    weatherRepo: ref.watch(weekWeatherRepoProvider),
    serverErrorFactory: ref.read(serverErrorFactoryProvider),
  );
});

final loginUseCaseProvider = Provider.autoDispose<LoginUseCase>((ref) {
  return LoginUseCase(
    authenticationRepository: ref.watch(authRepoProvider),
  );
});
