// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherList _$WeatherListFromJson(Map<String, dynamic> json) => WeatherList(
      (json['weatherList'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$WeatherListToJson(WeatherList instance) =>
    <String, dynamic>{
      'weatherList': instance.weatherList,
    };
