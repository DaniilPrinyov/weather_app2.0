import 'package:weather_app2/data/http_request.dart';
import 'package:weather_app2/internal/weather_date_vars.dart';

Future<void> saveDefault() async {
  final date = await ApiClient().getWeatherDefault();
  mainWeather = date.weather.join("main");
  description = date.weather.join("description");
  temp = date.main["temp"] as double;
  feelsLike = date.main["feelsLike"] as double;
  tempMin = date.main["tempMin"] as double;
  tempMax = date.main["tempMax"] as double;
  humidity = date.main["humidity"] as double;
  pressure = date.main["pressure"] as double;
  speed = date.wind["speed"] as double;
  deg = date.wind["deg"] as double;
  gust = date.wind["gust"] as double;
  name = date.name;
}
