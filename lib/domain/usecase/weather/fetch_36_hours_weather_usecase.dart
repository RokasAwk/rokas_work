import 'package:rokas_work/domain/repository/weather_repository.dart';

import '../../interface/result.dart';
import '../../interface/usecase.dart';
import '../../value_object/36_hours_weather.dart';
import '../common/server_error.dart';
import 'fetch_36_hours_weather_query.dart';

class Fetch36HoursWeatherUseCase
    implements
        UseCase<Fetch36HoursWeatherQuery, List<ThirtySixHoursWeather>,
            ServerError> {
  final WeatherRepository weatherRepo;
  Fetch36HoursWeatherUseCase({
    required this.weatherRepo,
    required ServerErrorFactory serverErrorFactory,
  }) : _serverErrorFactory = serverErrorFactory;

  final ServerErrorFactory _serverErrorFactory;

  @override
  Future<Result<List<ThirtySixHoursWeather>, ServerError>> execute(
    Fetch36HoursWeatherQuery param,
  ) async {
    try {
      List<ThirtySixHoursWeather> data = await weatherRepo.fetch36HoursWeather(
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
