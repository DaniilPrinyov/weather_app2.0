import 'package:dio/dio.dart';

Future<void> getHttp(String name) async {
  try {
    var response = await Dio().get(
        'https://api.openweathermap.org/data/2.5/weather?q=$name&appid=549748b59c7154d4b05f5f97d4e7c3f6');
    print(response);
  } catch (e) {
    print(e);
  }
}
