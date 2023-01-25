import 'package:json_annotation/json_annotation.dart';

//part 'main_model.g.dart';

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
  double temp;
  double feelsLike;
  double tempMin;
  double tempMax;
  double pressure;
  double humidity;
}
