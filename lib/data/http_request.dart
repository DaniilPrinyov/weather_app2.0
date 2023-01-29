// import 'dart:convert';
// import 'dart:io';

import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';

class ApiClient {
  final response = Dio();

  Future<void> getWeather(String name) async {
    try {
      final result = await response.get(
        'https://api.openweathermap.org/data/2.5/weather?q=$name&units=metric&lang=ru&appid=549748b59c7154d4b05f5f97d4e7c3f6',
      );
      print(result);
    } catch (e) {
      print(e);
    }
  }

  Future<void> getWeatherDefault() async {
    final Position geolocationUser = await Geolocator.getCurrentPosition(
      timeLimit: const Duration(seconds: 5),
      desiredAccuracy: LocationAccuracy.low,
    );
    final double lat = geolocationUser.latitude;
    final double lon = geolocationUser.longitude;
    try {
      final result = await response.get(
        'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&units=metric&lang=ru&appid=549748b59c7154d4b05f5f97d4e7c3f6',
      );
      print(result);
    } catch (e) {
      print(e);
    }
  }
}





// class ApiClient {
//   final client = HttpClient();

//   Future<void> getWeather(String name) async {
//     final url = Uri.parse(
//       "https://api.openweathermap.org/data/2.5/weather?q=$name&units=metric&lang=ru&appid=549748b59c7154d4b05f5f97d4e7c3f6",
//     );
//     final request = await client.getUrl(url);
//     final response = await request.close();
//     final jsonStrings = await response.transform(utf8.decoder).join();
//     print(jsonStrings);
//   }
// }