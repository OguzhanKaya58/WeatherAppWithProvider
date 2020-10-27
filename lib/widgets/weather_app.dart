import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_weather_withprovider/viewmodels/mytheme_view_model.dart';
import 'package:flutter_weather_withprovider/viewmodels/weather_view_model.dart';
import 'package:flutter_weather_withprovider/widgets/gecisli_arkaplan_rengi.dart';
import 'package:provider/provider.dart';
import 'last_update.dart';
import 'location.dart';
import 'max_and_min_temperature.dart';
import 'chosee_city.dart';
import 'weather_forecast_image.dart';

class WeatherApp extends StatelessWidget {
  String kullanicininSectigiSehir = "Ankara";
  WeatherViewModel _weatherViewModel;

  @override
  Widget build(BuildContext context) {
    _weatherViewModel = Provider.of<WeatherViewModel>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("Weather App"),
          actions: [
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () async {
                  kullanicininSectigiSehir = await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SehirSec(),
                    ),
                  );
                  _weatherViewModel.havaDurumunuGetir(kullanicininSectigiSehir);
                })
          ],
        ),
        body: Center(
          child: (_weatherViewModel.state == WeatherState.WeatherLoadedState)
              ? HavaDurumuGeldi()
              : (_weatherViewModel.state == WeatherState.WeatherLoadingState)
                  ? havaDurumuGetiriliyor()
                  : (_weatherViewModel.state == WeatherState.WeatherErrorState)
                      ? havaDurumuGetirHata()
                      : Center(child: Text("Lütfen Şehir Seçiniz")),
        ));
  }

  /* Widget havaDurumuGeldi(BuildContext context) {
    kullanicininSectigiSehir = _weatherViewModel.getirilenWeather.title;
    /*  Future.delayed(Duration(seconds: 1), () {
      var getirilenHavaDurumuKisaltmasi =
          _weatherViewModel.havaDurumuKisaltmasi();
      _myThemeViewModel.temaDegistir(getirilenHavaDurumuKisaltmasi);
    });
*/
    _refreshIndicator.complete();
    _refreshIndicator = Completer();
  }*/

  havaDurumuGetiriliyor() {
    return CircularProgressIndicator();
  }

  havaDurumuGetirHata() {
    return Text("Hava Durumu Getirilirken Hata Oluştu...");
  }
}

class HavaDurumuGeldi extends StatefulWidget {
  @override
  _HavaDurumuGeldiState createState() => _HavaDurumuGeldiState();
}

class _HavaDurumuGeldiState extends State<HavaDurumuGeldi> {
  WeatherViewModel _weatherViewModel;
  MyThemeViewModel _myThemeViewModel;
  Completer<void> _refreshIndicator;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _refreshIndicator = Completer<void>();
    /* WidgetsBinding.instance.addPersistentFrameCallback((timeStamp) {
      var kisaltma =
          Provider.of<WeatherViewModel>(context).havaDurumuKisaltmasi();
      Provider.of<MyThemeViewModel>(context).temaDegistir(kisaltma);
    });*/
  }

  @override
  Widget build(BuildContext context) {
    _refreshIndicator.complete();
    _refreshIndicator = Completer<void>();
    _weatherViewModel = Provider.of<WeatherViewModel>(context);
    _myThemeViewModel = Provider.of<MyThemeViewModel>(context);
    String kullanicininSectigiSehir = _weatherViewModel.getirilenWeather.title;
    /* return GecisliRenkContainer(
      renk: Provider.of<MyThemeViewModel>(context).myTheme.renk,
      child:*/
    return RefreshIndicator(
      onRefresh: () {
        _weatherViewModel.havaDurumunuGuncelle(kullanicininSectigiSehir);
        return _refreshIndicator.future;
      },
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: LocationWidget(
                secilenSehir: kullanicininSectigiSehir,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: WeatherForecastImageWidget()),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            // Getirilen Hava Durumunu parametre olarak geçtik (Parametreli Kullanımı)
            child: Center(
                child: MaxAndMinTemperatureWidget(
              bugununDegerleri:
                  _weatherViewModel.getirilenWeather.consolidatedWeather[0],
            )),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: LastUpdateWidget()), // Parametresiz kullanımı
          ),
        ],
      ),
      //),
    );
  }
}
