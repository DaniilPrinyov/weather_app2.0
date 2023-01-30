import 'package:json_annotation/json_annotation.dart';

part 'weather_list_model.g.dart';

@JsonSerializable()
class WeatherList {
  WeatherList(
    this.weatherList,
  );
  final List<Map<String, dynamic>> weatherList;

  factory WeatherList.fromJson(Map<String, String> json) =>
      _$WeatherListFromJson(json);
}
