import 'package:flutter/material.dart';
import 'package:weather_app2/presentation/widgets/examples/weather_for_hour_example.dart';

class WeatherForHourListWidget extends StatelessWidget {
  const WeatherForHourListWidget({
    super.key,
    required this.weatherDataMap,
  });

  final List weatherDataMap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 12,
        itemBuilder: (context, index) => WeatherForHour(
          condition: weatherDataMap[0].toString(),
          time: int.parse(weatherDataMap[1].toString()),
          temp: int.parse(weatherDataMap[2].toString()),
        ),
      ),
    );
  }
}
