// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_map_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherMap _$WeatherMapFromJson(Map<String, dynamic> json) => WeatherMap(
      json['main'] as String,
      json['description'] as String,
    );

Map<String, dynamic> _$WeatherMapToJson(WeatherMap instance) =>
    <String, dynamic>{
      'main': instance.main,
      'description': instance.description,
    };
