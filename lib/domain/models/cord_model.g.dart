// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cord_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cord _$CordFromJson(Map<String, dynamic> json) => Cord(
      (json['lon'] as num).toDouble(),
      (json['lan'] as num).toDouble(),
    );

Map<String, dynamic> _$CordToJson(Cord instance) => <String, dynamic>{
      'lon': instance.lon,
      'lan': instance.lan,
    };
