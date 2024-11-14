import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rokas_work/domain/usecase/weather/fetch_week_weather_query.dart';

import '../../../domain/usecase/weather/fetch_week_weather_usecase.dart';
import '../../routers/router.dart';
import 'weather_state.dart';

abstract class WeatherNotifier extends StateNotifier<WeatherState> {
  WeatherNotifier(super.state);

  Future<void> fetchData({
    required String elementName,
    String? locationName,
  });
}

class WeatherNotifierImpl extends WeatherNotifier {
  final AppRouter appRouter;
  final FetchWeekWeatherUseCase fetchWeekWeatherUseCase;

  WeatherNotifierImpl({
    required this.appRouter,
    required this.fetchWeekWeatherUseCase,
  }) : super(WeatherState.loading());

  @override
  Future<void> fetchData({
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
        state = WeatherState.success(weatherDataList: data);
      }
      if (data.isEmpty) {
        state = WeatherState.error();
      } else {
        state = Success(
          weatherDataList: data,
        );
      }
    }, error: (error) {
      state = WeatherState.error();
    });
  }
}
