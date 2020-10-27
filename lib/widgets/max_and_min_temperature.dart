import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_weather_withprovider/models/weather.dart';

class MaxAndMinTemperatureWidget extends StatelessWidget {
  ConsolidatedWeather bugununDegerleri;

  MaxAndMinTemperatureWidget({this.bugununDegerleri});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "Minumum : " + bugununDegerleri.minTemp.floor().toString(),
          style: TextStyle(fontSize: 16, color: Colors.blue),
        ),
        Text(
          "Maksimum : "+ bugununDegerleri.maxTemp.floor().toString(),
          style: TextStyle(fontSize: 16, color: Colors.red),
        ),
      ],
    );
  }
}
