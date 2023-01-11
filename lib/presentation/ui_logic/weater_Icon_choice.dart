import 'package:weather_app2/presentation/ui_data/weather_icons.dart';

String weaterIconChoice(String condition, int time) {
  String result = "";
  if (time >= 6 && time <= 21) {
    switch (condition) {
      case "clear sky":
        result = WeatherIcons.clearDay;
        break;
      case "few clouds":
        result = WeatherIcons.partyCloudyDay;
        break;
      case "scattered clouds":
        result = WeatherIcons.cloudy;
        break;
      case "broken clouds":
        result = WeatherIcons.brockenCloudy;
        break;
      case "shower rain":
        result = WeatherIcons.heavyRain;
        break;
      case "rain":
        result = WeatherIcons.rain;
        break;
      case "thunderstorm":
        result = WeatherIcons.thunder;
        break;
      case "snow":
        result = WeatherIcons.snowStorm;
        break;
      case "mist":
        result = WeatherIcons.fog;
        break;
      default:
        result = WeatherIcons.clearNight;
    }
  } else {
    switch (condition) {
      case "clear sky":
        result = WeatherIcons.clearNight;
        break;
      case "few clouds":
        result = WeatherIcons.partyCloudyNight;
        break;
      case "scattered clouds":
        result = WeatherIcons.cloudy;
        break;
      case "broken clouds":
        result = WeatherIcons.brockenCloudy;
        break;
      case "shower rain":
        result = WeatherIcons.heavyRain;
        break;
      case "rain":
        result = WeatherIcons.rain;
        break;
      case "thunderstorm":
        result = WeatherIcons.thunder;
        break;
      case "snow":
        result = WeatherIcons.snowStorm;
        break;
      case "mist":
        result = WeatherIcons.fog;
        break;
      default:
        result = WeatherIcons.clearNight;
    }
  }
  return result;
}
