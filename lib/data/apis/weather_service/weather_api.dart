import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'dto/fetch_week_weather_request_dto.dart';
import 'dto/fetch_week_weather_response_dto.dart';

part 'weather_api.g.dart';

@RestApi(baseUrl: "https://opendata.cwa.gov.tw/api")
abstract class WeatherApi {
  factory WeatherApi(Dio dio, {String baseUrl}) = _WeatherApi;

  @GET('/v1/rest/datastore/F-D0047-091')
  Future<FetchWeekWeatherResponseDto> fetchWeekWeather(
    @Queries() FetchWeekWeatherRequestDto body,
  );
}
