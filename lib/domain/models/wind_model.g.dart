// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wind_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Wind _$WindFromJson(Map<String, dynamic> json) => Wind(
      (json['speed'] as num).toDouble(),
      (json['deg'] as num).toDouble(),
      (json['gust'] as num).toDouble(),
    );

Map<String, dynamic> _$WindToJson(Wind instance) => <String, dynamic>{
      'speed': instance.speed,
      'deg': instance.deg,
      'gust': instance.gust,
    };
