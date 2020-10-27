import 'package:flutter/material.dart';
import 'package:flutter_weather_withprovider/models/my_theme.dart';

class MyThemeViewModel extends ChangeNotifier {
  MyTheme _myTheme;

  MyThemeViewModel() {
    _myTheme = MyTheme(Colors.blue, ThemeData.light());
  }

  MyTheme get myTheme => _myTheme;

  set myTheme(MyTheme value) {
    _myTheme = value;
    notifyListeners();
  }

  void temaDegistir(String havaDurumuKisaltmasi) {
    MyTheme _geciciTema;
    switch (havaDurumuKisaltmasi) {
      case "sn": //Karlı
      case "sl": //Sulu Karlı
      case "h": // Dolu
      case "t": // Fırtına
      case "hc": //Çok bulutlı
        _geciciTema =
            MyTheme(Colors.grey, ThemeData(primaryColor: Colors.blueGrey));
        break;
      case "hr": // Ağır Yağmurlu
      case "lr": // Hafif Yağmurlu
      case "s": // Sağnak Yağmurlu
        _geciciTema =
            MyTheme(Colors.indigo, ThemeData(primaryColor: Colors.indigo));
        break;
      case "lc": //Az Bulutlu
      case "c": // Açık Güneşli Hava
        _geciciTema = MyTheme(
            Colors.yellow, ThemeData(primaryColor: Colors.lightGreenAccent));
        break;
    }
    myTheme = _geciciTema;
  }
}
