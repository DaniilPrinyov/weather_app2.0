import 'package:json_annotation/json_annotation.dart';

part 'cord_model.g.dart';

@JsonSerializable()
class Cord {
  Cord(
    this.lon,
    this.lan,
  );
  final double lon;
  final double lan;

  factory Cord.fromJson(Map<String, double> json) => _$CordFromJson(json);
}
