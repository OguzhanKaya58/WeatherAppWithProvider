/*class WeatherRepository {
  WeatherApiClient weatherApiClient = locator<WeatherApiClient>();

  Future<Weather> getWeather(String sehir) async {
    final int sehirID = await weatherApiClient.getLocationID(sehir);
    return await weatherApiClient.getWeather(sehirID);
  }
}*/

import 'package:flutter_weather_withprovider/data/weather_api_client.dart';
import 'package:flutter_weather_withprovider/models/weather.dart';
import '../locator.dart';

class WeatherRepository {
  WeatherApiClient weatherApiClient = locator<WeatherApiClient>();

  Future<Weather> getWeather(String sehir) async {
    final int sehirID = await weatherApiClient.getLocationID(sehir);
    return await weatherApiClient.getWeather(sehirID);
  }
}
