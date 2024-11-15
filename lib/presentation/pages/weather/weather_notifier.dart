import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rokas_work/domain/usecase/weather/fetch_36_hours_weather_query.dart';
import 'package:rokas_work/domain/usecase/weather/fetch_week_weather_query.dart';

import '../../../domain/usecase/weather/fetch_36_hours_weather_usecase.dart';
import '../../../domain/usecase/weather/fetch_week_weather_usecase.dart';
import '../../routers/router.dart';
import 'weather_state.dart';

abstract class WeatherNotifier extends StateNotifier<WeatherState> {
  WeatherNotifier(super.state);

  Future<void> fetchWeekWeatherData({
    required String elementName,
    String? locationName,
  });

  Future<void> fetch36HoursWeatherData({
    required String elementName,
    String? locationName,
  });

  void updateCurrentCity({
    required String currentCity,
  });
}

class WeatherNotifierImpl extends WeatherNotifier {
  final AppRouter appRouter;
  final FetchWeekWeatherUseCase fetchWeekWeatherUseCase;
  final Fetch36HoursWeatherUseCase fetch36HoursWeatherUseCase;

  WeatherNotifierImpl({
    required this.appRouter,
    required this.fetchWeekWeatherUseCase,
    required this.fetch36HoursWeatherUseCase,
  }) : super(WeatherState.loading());

  @override
  Future<void> fetchWeekWeatherData({
    required String elementName,
    String? locationName,
  }) async {
    FetchWeekWeatherQuery query = FetchWeekWeatherQuery(
      elementName: elementName,
      locationName: locationName,
    );
    final result = await fetchWeekWeatherUseCase.execute(query);
    result.when(success: (data) {
      if (state is Loading) {
        state = Success(
          weekWeatherDataList: data,
          thirtySixHoursWeatherDataList: [],
          currentCity: '',
        );
      }

      state = (state as Success).copyWith(
        weekWeatherDataList: data,
      );
    }, error: (error) {
      state = WeatherState.error();
    });
  }

  @override
  Future<void> fetch36HoursWeatherData({
    required String elementName,
    String? locationName,
  }) async {
    Fetch36HoursWeatherQuery query = Fetch36HoursWeatherQuery(
      elementName: elementName,
      locationName: locationName,
    );
    final result = await fetch36HoursWeatherUseCase.execute(query);
    result.when(success: (data) {
      if (state is Loading) {
        state = Success(
            weekWeatherDataList: [],
            thirtySixHoursWeatherDataList: data,
            currentCity: '');
      }

      state = (state as Success).copyWith(
        thirtySixHoursWeatherDataList: data,
      );
    }, error: (error) {
      state = WeatherState.error();
    });
  }

  @override
  void updateCurrentCity({
    required String currentCity,
  }) {
    state = (state as Success).copyWith(currentCity: currentCity);
  }
}
