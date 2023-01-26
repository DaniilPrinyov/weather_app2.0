import 'package:json_annotation/json_annotation.dart';

part 'clouds_model.g.dart';

@JsonSerializable()
class Clouds {
  Clouds(
    this.all,
  );
  final double all;
  factory Clouds.fromJson(Map<String, double> json) => _$CloudsFromJson(json);
}
