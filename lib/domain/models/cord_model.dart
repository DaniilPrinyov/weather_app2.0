import 'package:json_annotation/json_annotation.dart';

//part 'cord_model.g.dart';

@JsonSerializable()
class Cord {
  Cord(
    this.lon,
    this.lan,
  );
  double lon;
  double lan;
}
