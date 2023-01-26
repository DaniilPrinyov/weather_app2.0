import 'package:json_annotation/json_annotation.dart';

part 'waerthet_model.g.dart';

@JsonSerializable()
class Weather {
  Weather(
    this.main,
    this.description,
  );
  final String main;
  final String description;

  factory Weather.fromJson(Map<String, String> json) => _$WeatherFromJson(json);
}
