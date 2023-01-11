import 'package:flutter/material.dart';
import 'package:weather_app2/presentation/ui_data/colors.dart';
import 'package:weather_app2/presentation/ui_logic/weater_Icon_choice.dart';

class WeatherForHour extends StatelessWidget {
  const WeatherForHour({
    super.key,
    required this.condition,
    required this.time,
    required this.temp,
  });

  final String condition;
  final int time;
  final int temp;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
      ),
      child: Column(
        children: [
          Text(
            "$temp℃",
            style: const TextStyle(
              color: WeatherColors.bleak,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset(
            weaterIconChoice(condition, time),
            scale: 9,
          ),
          Text(
            "$time:00",
            style: const TextStyle(
              color: WeatherColors.bleak,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
