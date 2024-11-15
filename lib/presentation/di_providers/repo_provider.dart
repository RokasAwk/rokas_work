part of "di_provider.dart";

final weekWeatherRepoProvider = Provider.autoDispose<WeatherRepository>((ref) {
  return WeatherRepositoryImpl(
    weatherApi: () => ref.read(weatherApiProvider),
  );
});
