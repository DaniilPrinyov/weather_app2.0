String bgIcon(String name) {
  String result = '';
  switch (name) {
    case "clear sky":
      result = "assets/rive/sun.riv";
      break;
    case "few clouds":
      result = "assets/rive/cloudy.riv";
      break;
    case "scattered clouds":
      result = "assets/rive/cloudy.riv";
      break;
    case "broken clouds":
      result = "assets/rive/cloudy.riv";
      break;
    case "shower rain":
      result = "assets/rive/rain.riv";
      break;
    case "rain":
      result = "assets/rive/rain.riv";
      break;
    case "thunderstorm":
      result = "assets/rive/thander.riv";
      break;
    case "snow":
      result = "assets/rive/rain.riv";
      break;
    case "mist":
      result = "assets/rive/rain.riv";
      break;
    default:
      result = "assets/rive/moon.riv";
  }
  return result;
}
