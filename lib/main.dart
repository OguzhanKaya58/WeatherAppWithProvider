import 'package:flutter/material.dart';
import 'package:flutter_weather_withprovider/locator.dart';
import 'package:flutter_weather_withprovider/viewmodels/mytheme_view_model.dart';
import 'package:flutter_weather_withprovider/viewmodels/weather_view_model.dart';
import 'package:flutter_weather_withprovider/widgets/weather_app.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

void main() {
  setupLocator();
  // runApp(MyApp());
  runApp(
    ChangeNotifierProvider(
      create: (context) => MyThemeViewModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MyThemeViewModel>(
      builder: (context, myThemeViewModel, child) => MaterialApp(
        title: "Weather App",
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: ChangeNotifierProvider<WeatherViewModel>(
          create: (context) => locator<WeatherViewModel>(),
          child: WeatherApp(),
        ),
      ),
    );
  }
}
