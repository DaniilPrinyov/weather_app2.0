import 'package:json_annotation/json_annotation.dart';

part 'wind_model.g.dart';

@JsonSerializable()
class Wind {
  Wind(
    this.speed,
    this.deg,
    this.gust,
  );
  final double speed;
  final double deg;
  final double gust;

  factory Wind.fromJson(Map<String, double> json) => _$WindFromJson(json);
}
