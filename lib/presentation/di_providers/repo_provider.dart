part of "di_provider.dart";

final weatherRepoProvider = Provider.autoDispose<WeatherRepository>((ref) {
  return WeatherRepositoryImpl(
    weatherApi: () => ref.read(weatherApiProvider),
  );
});
