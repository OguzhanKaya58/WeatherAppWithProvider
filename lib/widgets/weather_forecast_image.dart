import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_weather_withprovider/viewmodels/weather_view_model.dart';
import 'package:provider/provider.dart';

class WeatherForecastImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _weatherViewModel = Provider.of<WeatherViewModel>(context);

    return Container(
      margin: EdgeInsets.symmetric(vertical: 40.0),
      height: 350,
      child: ListView(
        padding: EdgeInsets.only(left: 75),
        scrollDirection: Axis.horizontal,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Bugün",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    _weatherViewModel
                            .getirilenWeather.consolidatedWeather[0].theTemp
                            .floor()
                            .toString() +
                        " °C",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Image.network(
                "https://www.metaweather.com/static/img/weather/png/" +
                    _weatherViewModel.getirilenWeather.consolidatedWeather[0]
                        .weatherStateAbbr +
                    ".png",
                width: 250,
                height: 250,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                _weatherViewModel
                    .getirilenWeather.consolidatedWeather[0].weatherStateName,
                style: TextStyle(fontSize: 18, color: Colors.blueGrey),
              ),
            ],
          ),
          SizedBox(
            width: 100,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Yarın",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    _weatherViewModel
                            .getirilenWeather.consolidatedWeather[1].theTemp
                            .floor()
                            .toString() +
                        " °C",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Image.network(
                "https://www.metaweather.com/static/img/weather/png/" +
                    _weatherViewModel.getirilenWeather.consolidatedWeather[1]
                        .weatherStateAbbr +
                    ".png",
                width: 250,
                height: 250,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                _weatherViewModel
                    .getirilenWeather.consolidatedWeather[1].weatherStateName,
                style: TextStyle(fontSize: 18, color: Colors.blueGrey),
              ),
            ],
          ),
          SizedBox(
            width: 100,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    _weatherViewModel.getirilenWeather.consolidatedWeather[2]
                            .applicableDate.day
                            .toString() +
                        "-" +
                        _weatherViewModel.getirilenWeather
                            .consolidatedWeather[2].applicableDate.month
                            .toString(),
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    _weatherViewModel
                            .getirilenWeather.consolidatedWeather[2].theTemp
                            .floor()
                            .toString() +
                        " °C",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Image.network(
                "https://www.metaweather.com/static/img/weather/png/" +
                    _weatherViewModel.getirilenWeather.consolidatedWeather[2]
                        .weatherStateAbbr +
                    ".png",
                width: 250,
                height: 250,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                _weatherViewModel
                    .getirilenWeather.consolidatedWeather[2].weatherStateName,
                style: TextStyle(fontSize: 18, color: Colors.blueGrey),
              ),
            ],
          ),
          SizedBox(
            width: 100,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    _weatherViewModel.getirilenWeather.consolidatedWeather[3]
                            .applicableDate.day
                            .toString() +
                        "-" +
                        _weatherViewModel.getirilenWeather
                            .consolidatedWeather[3].applicableDate.month
                            .toString(),
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    _weatherViewModel
                            .getirilenWeather.consolidatedWeather[3].theTemp
                            .floor()
                            .toString() +
                        " °C",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Image.network(
                "https://www.metaweather.com/static/img/weather/png/" +
                    _weatherViewModel.getirilenWeather.consolidatedWeather[3]
                        .weatherStateAbbr +
                    ".png",
                width: 250,
                height: 250,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                _weatherViewModel
                    .getirilenWeather.consolidatedWeather[3].weatherStateName,
                style: TextStyle(fontSize: 18, color: Colors.blueGrey),
              ),
            ],
          ),
          SizedBox(
            width: 100,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    _weatherViewModel.getirilenWeather.consolidatedWeather[4]
                            .applicableDate.day
                            .toString() +
                        "-" +
                        _weatherViewModel.getirilenWeather
                            .consolidatedWeather[4].applicableDate.month
                            .toString(),
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    _weatherViewModel
                            .getirilenWeather.consolidatedWeather[4].theTemp
                            .floor()
                            .toString() +
                        " °C",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Image.network(
                "https://www.metaweather.com/static/img/weather/png/" +
                    _weatherViewModel.getirilenWeather.consolidatedWeather[4]
                        .weatherStateAbbr +
                    ".png",
                width: 250,
                height: 250,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                _weatherViewModel
                    .getirilenWeather.consolidatedWeather[4].weatherStateName,
                style: TextStyle(fontSize: 18, color: Colors.blueGrey),
              ),
            ],
          ),
          SizedBox(
            width: 100,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    _weatherViewModel.getirilenWeather.consolidatedWeather[5]
                            .applicableDate.day
                            .toString() +
                        "-" +
                        _weatherViewModel.getirilenWeather
                            .consolidatedWeather[5].applicableDate.month
                            .toString(),
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    _weatherViewModel
                            .getirilenWeather.consolidatedWeather[5].theTemp
                            .floor()
                            .toString() +
                        " °C",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Image.network(
                "https://www.metaweather.com/static/img/weather/png/" +
                    _weatherViewModel.getirilenWeather.consolidatedWeather[5]
                        .weatherStateAbbr +
                    ".png",
                width: 250,
                height: 250,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                _weatherViewModel
                    .getirilenWeather.consolidatedWeather[5].weatherStateName,
                style: TextStyle(fontSize: 18, color: Colors.blueGrey),
              ),
            ],
          ),
          SizedBox(
            width: 100,
          ),
        ],
      ),
    );
  }
}
