import 'package:json_annotation/json_annotation.dart';

// part 'all_weather.g.dart';

@JsonSerializable()
class AllWeather {
  AllWeather(
    this.cord,
    this.weather,
    this.main,
    this.wind,
    this.clouds,
    this.name,
    this.cod,
  );

  Map cord;
  Map weather;
  Map main;
  Map wind;
  Map clouds;
  String name;
  int cod;
}
