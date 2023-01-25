import 'package:json_annotation/json_annotation.dart';

//part 'weather_model.g.dart';

@JsonSerializable()
class Weather {
  Weather(
    this.main,
    this.description,
  );
  String main;
  String description;
}
