import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:latlong2/latlong.dart';
import 'package:http/http.dart' as http;

import '../constants.dart';

class WeatherWidget extends HookConsumerWidget {
  const WeatherWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentWeatherFuture = ref.watch(currentWeatherFutureProvider);
    return currentWeatherFuture.when(
      data: (weather) => Center(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: "${weather.temperature.toString()} \u2103\n",
            style: TextStyle(color: Colors.white, fontSize: 40),
            children: <TextSpan>[
              TextSpan(text: "${weather.description}", style: TextStyle(fontSize: 16))
            ],
          ),
        ),
      ),
      error: (error, _) => Text(error.toString()),
      loading: () => const SizedBox(),
    );
  }
}

Task<Weather> _getCurrentWeather(LatLng latLng) {
  final lat = latLng.latitude;
  final lng = latLng.longitude;
  final apikey = dotenv.env["OPENWEATHER_API_KEY"];
  return Task(() async {
    Uri uri = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?units=metric&lat=$lat&lon=$lng&lang=hr&appid=$apikey");
    http.Response response = await http.get(uri);
    Map<String, dynamic> jsonBody = jsonDecode(response.body);
    double temperature = jsonBody["main"]["temp"];
    String weatherDescription = jsonBody["weather"][0]["description"];
    return Weather(temperature: temperature.round(), description: weatherDescription);
  });
}

final currentWeatherFutureProvider = FutureProvider((ref) async {
  return await _getCurrentWeather(Constants.brezovicaLatLng).run();
});

class Weather {
  const Weather({required this.temperature, required this.description});
  final int temperature;
  final String description;
}
