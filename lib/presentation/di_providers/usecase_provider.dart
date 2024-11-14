part of "di_provider.dart";

final weatherUseCaseProvider =
    Provider.autoDispose<FetchWeekWeatherUseCase>((ref) {
  return FetchWeekWeatherUseCase(
    weatherRepo: ref.watch(weatherRepoProvider),
    serverErrorFactory: ref.read(serverErrorFactoryProvider),
  );
});
