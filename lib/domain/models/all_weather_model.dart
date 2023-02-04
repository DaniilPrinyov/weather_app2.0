import 'package:json_annotation/json_annotation.dart';

part 'all_weather_model.g.dart';

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
  @JsonKey(name: "coord")
  final Map<String, dynamic> cord;
  final List<Map<String, dynamic>> weather;
  final Map<String, dynamic> main;
  final Map<String, dynamic> wind;
  final Map<String, dynamic> clouds;
  final String name;
  final int cod;

  factory AllWeather.fromJson(Map<String, dynamic> json) =>
      _$AllWeatherFromJson(json);
}
