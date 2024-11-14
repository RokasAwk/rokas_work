import 'package:rokas_work/domain/repository/weather_repository.dart';

import '../../interface/result.dart';
import '../../interface/usecase.dart';
import '../../value_object/week_weather.dart';
import '../common/server_error.dart';
import 'fetch_week_weather_query.dart';

class FetchWeekWeatherUseCase
    implements UseCase<FetchWeekWeatherQuery, List<WeekWeather>, ServerError> {
  final WeatherRepository weatherRepo;
  FetchWeekWeatherUseCase({
    required this.weatherRepo,
    required ServerErrorFactory serverErrorFactory,
  }) : _serverErrorFactory = serverErrorFactory;

  final ServerErrorFactory _serverErrorFactory;

  @override
  Future<Result<List<WeekWeather>, ServerError>> execute(
    FetchWeekWeatherQuery param,
  ) async {
    try {
      List<WeekWeather> data = await weatherRepo.fetchWeekWeather(
        elementName: param.elementName,
        locationName: param.locationName,
      );

      return Result.success(data);
    } catch (e) {
      var exception = _serverErrorFactory.generalCommonExceptionHandler(e);
      return Result.error(exception);
    }
  }
}
