// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllWeather _$AllWeatherFromJson(Map<String, dynamic> json) => AllWeather(
      json['cord'] as Map<String, dynamic>,
      json['weather'] as Map<String, dynamic>,
      json['main'] as Map<String, dynamic>,
      json['wind'] as Map<String, dynamic>,
      json['clouds'] as Map<String, dynamic>,
      json['name'] as String,
      json['cod'] as int,
    );

Map<String, dynamic> _$AllWeatherToJson(AllWeather instance) =>
    <String, dynamic>{
      'cord': instance.cord,
      'weather': instance.weather,
      'main': instance.main,
      'wind': instance.wind,
      'clouds': instance.clouds,
      'name': instance.name,
      'cod': instance.cod,
    };
