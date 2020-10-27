import 'dart:convert';
import 'package:flutter_weather_withprovider/models/weather.dart';
import 'package:http/http.dart' as http;

/*class WeatherApiClient {
  static const baseUrl = "https://www.metaweather.com";
  final http.Client httpClint = http.Client();

  Future<int> getLocationID(String sehirAdi) async {
    final sehirUrl = baseUrl + "/api/location/search/?query=" + sehirAdi;
    final gelenCevap = await httpClint.get(sehirAdi);

    if (gelenCevap.statusCode != 200) {
      throw Exception("Veri Getirilemedi");
    }
    final gelenCevapJSon = (jsonDecode(gelenCevap.body)) as List;
    return gelenCevapJSon[0]["woeid"];
  }

  Future<Weather> getWeather(int sehirID) async {
    final havaDurumuUrl = baseUrl + "/api/location/$sehirID";
    final havaDurumuGelenCevap = await httpClint.get(havaDurumuUrl);
    if (havaDurumuGelenCevap.statusCode != 200) {
      throw Exception("Hava Durumu Getirilemedi");
    }
    final havaDurumuCevapJSon = jsonDecode(havaDurumuGelenCevap.body);
    return Weather.fromJson(havaDurumuCevapJSon);
  }
}*/
class WeatherApiClient {
  static const baseUrl = "https://www.metaweather.com";
  final http.Client httpClient = http.Client();

  Future<int> getLocationID(String sehirAdi) async {
    final sehirURL = baseUrl + "/api/location/search/?query=" + sehirAdi;
    final gelenCevap = await httpClient.get(sehirURL);

    if (gelenCevap.statusCode != 200) {
      throw Exception("Veri Getirilemedi");
    }

    final gelenCevapJSON = (jsonDecode(gelenCevap.body)) as List;
    return gelenCevapJSON[0]["woeid"];
  }

  Future<Weather> getWeather(int sehirID) async {
    final havaDurumuURL = baseUrl + "/api/location/$sehirID";
    final havaDurumuGelenCevap = await httpClient.get(havaDurumuURL);
    if (havaDurumuGelenCevap.statusCode != 200) {
      throw Exception("Hava durumu Getirilemedi");
    }

    final havaDurumuCevapJSON = jsonDecode(havaDurumuGelenCevap.body);
    return Weather.fromJson(havaDurumuCevapJSON);
  }
}

