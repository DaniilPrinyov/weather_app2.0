import 'package:json_annotation/json_annotation.dart';

part 'weather_map_model.g.dart';

@JsonSerializable()
class WeatherMap {
  WeatherMap(
    this.main,
    this.description,
  );
  final String main;
  final String description;

  factory WeatherMap.fromJson(Map<String, String> json) =>
      _$WeatherMapFromJson(json);
}
