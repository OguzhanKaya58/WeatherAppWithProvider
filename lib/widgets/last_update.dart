import 'package:flutter/material.dart';
import 'package:flutter_weather_withprovider/viewmodels/weather_view_model.dart';
import 'package:provider/provider.dart';

class LastUpdateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _weatherViewModel = Provider.of<WeatherViewModel>(context);
    var yeniTarih =
        _weatherViewModel.getirilenWeather.time.toLocal().add(Duration(hours: 3));
    return Text(
      'Son Güncelleme : ' + TimeOfDay.fromDateTime(yeniTarih).format(context),
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
    );
  }
}
