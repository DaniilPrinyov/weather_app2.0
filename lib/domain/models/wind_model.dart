import 'package:json_annotation/json_annotation.dart';

// part 'wind_weather.g.dart';

@JsonSerializable()
class Wind {
  Wind(
    this.speed,
    this.deg,
    this.gust,
  );
  double speed;
  double deg;
  double gust;
}
