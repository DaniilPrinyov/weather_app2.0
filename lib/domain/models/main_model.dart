import 'package:json_annotation/json_annotation.dart';

part 'main_model.g.dart';

@JsonSerializable()
class Main {
  Main(
    this.temp,
    this.feelsLike,
    this.tempMin,
    this.tempMax,
    this.pressure,
    this.humidity,
  );
  final double temp;
  @JsonKey(name: "feels_like")
  final double feelsLike;
  @JsonKey(name: "temp_min")
  final double tempMin;
  @JsonKey(name: "temp_max")
  final double tempMax;
  final double pressure;
  final double humidity;

  factory Main.fromJson(Map<String, double> json) => _$MainFromJson(json);
}
