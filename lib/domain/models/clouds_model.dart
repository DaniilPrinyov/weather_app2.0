import 'package:json_annotation/json_annotation.dart';

//part 'clouds_model.dart';

@JsonSerializable()
class Clouds {
  Clouds(
    this.all,
  );
  double all;
}
