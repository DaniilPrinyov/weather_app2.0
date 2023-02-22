// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllWeather _$AllWeatherFromJson(Map<String, dynamic> json) => AllWeather(
      json['coord'] as Map<String, dynamic>?,
      (json['weather'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      json['main'] as Map<String, dynamic>?,
      json['wind'] as Map<String, dynamic>?,
      json['clouds'] as Map<String, dynamic>?,
      json['name'] as String?,
      json['cod'],
    );

Map<String, dynamic> _$AllWeatherToJson(AllWeather instance) =>
    <String, dynamic>{
      'coord': instance.cord,
      'weather': instance.weather,
      'main': instance.main,
      'wind': instance.wind,
      'clouds': instance.clouds,
      'name': instance.name,
      'cod': instance.cod,
    };
