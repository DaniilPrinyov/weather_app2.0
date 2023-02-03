import 'dart:convert';
import 'dart:io';

import 'package:geolocator/geolocator.dart';
import 'package:weather_app2/domain/models/all_weather_model.dart';

// class ApiClient {
//   final response = Dio();

//   Future<List<AllWeather>> getWeather(String name) async {
//     final result = await response.get(
//       'https://api.openweathermap.org/data/2.5/weather?q=$name&units=metric&lang=ru&appid=549748b59c7154d4b05f5f97d4e7c3f6',
//     );
//     final json = await jsonDecode(result as String) as List<dynamic>;
//     final weatherGet = json
//         .map((dynamic e) => AllWeather.fromJson(e as Map<String, dynamic>))
//         .toList();
//     print(weatherGet);
//     return weatherGet;
//   }

//   Future<void> getWeatherDefault() async {
//     final Position geolocationUser = await Geolocator.getCurrentPosition(
//       timeLimit: const Duration(seconds: 5),
//       desiredAccuracy: LocationAccuracy.low,
//     );
//     final double lat = geolocationUser.latitude;
//     final double lon = geolocationUser.longitude;
//     try {
//       final result = await response.get(
//         'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&units=metric&lang=ru&appid=549748b59c7154d4b05f5f97d4e7c3f6',
//       );
//       print(result);
//     } catch (e) {
//       print(e);
//     }
//   }
// }

class ApiClient {
  final client = HttpClient();

  Future<void> getWeather(String name) async {
    final url = Uri.parse(
      "https://api.openweathermap.org/data/2.5/weather?q=$name&units=metric&lang=ru&appid=549748b59c7154d4b05f5f97d4e7c3f6",
    );
    final request = await client.getUrl(url);
    final response = await request.close();
    final jsonStrings = await response.transform(utf8.decoder).join();
    final dynamic json = await jsonDecode(jsonStrings);
    final weatherGet = AllWeather.fromJson(json as Map<String, dynamic>);
    print(weatherGet.main);
  }

  Future<void> getWeatherDefault() async {
    Future<Position> determinePosition() async {
      bool serviceEnabled;
      LocationPermission permission;
      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        return Future.error('Location services are disabled.');
      }
      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return Future.error('Location permissions are denied');
        }
      }
      if (permission == LocationPermission.deniedForever) {
        return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.',
        );
      }

      return Geolocator.getCurrentPosition(
        timeLimit: const Duration(seconds: 5),
        desiredAccuracy: LocationAccuracy.low,
      );
    }

    final Position geolocationUser = await determinePosition();
    final double lat = geolocationUser.latitude;
    final double lon = geolocationUser.longitude;
    final url = Uri.parse(
      "https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&units=metric&lang=ru&appid=549748b59c7154d4b05f5f97d4e7c3f6",
    );
    final request = await client.getUrl(url);
    final response = await request.close();
    final jsonStrings = await response.transform(utf8.decoder).join();
    final dynamic json = await jsonDecode(jsonStrings);
    final weatherGet = AllWeather.fromJson(json as Map<String, dynamic>);
    print(weatherGet.name);
  }
}
