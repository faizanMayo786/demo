// https://github.com/faizanMayo786

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

String temp = '';
String cityName = '';
String country = "";
String weather = '';
String humidity = '';

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  getWeather() async {
    var apiUrl =
        'https://api.openweathermap.org/data/2.5/weather?lat=33&lon=74&appid=d29bf9f414cd29a6c433123319353ccb';
    var response = await http.get(Uri.parse(apiUrl));
    dynamic data = jsonDecode(response.body);
    setState(() {
      country = data['sys']['country'];
      temp = data['main']['temp'].toString();
      cityName = data['name'];
      weather = data['weather'][0]['description'];
      humidity = data['main']['humidity'].toString();
    });
    print(data['main']['humidity']);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("Weather App")),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Weather : $weather"),
                Text("City Name : $cityName"),
                Text("Country : $country"),
                Text("Temperature : $temp"),
                Text("Humidity : $humidity"),
                ElevatedButton(
                    onPressed: () {
                      getWeather();
                    },
                    child: Text("Fetch data"))
              ],
            ),
          )),
    );
  }
}
