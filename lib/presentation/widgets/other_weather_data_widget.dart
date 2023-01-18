import 'package:flutter/material.dart';
import 'package:weather_app2/presentation/ui_data/colors.dart';
import 'package:weather_app2/presentation/ui_data/weather_icons.dart';
import 'package:weather_app2/presentation/ui_logic/weater_Icon_choice.dart';

class OtherWeatherDataWidget extends StatelessWidget {
  const OtherWeatherDataWidget({
    super.key,
    required this.humidity,
    required this.pressure,
  });

  final String humidity;
  final String pressure;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: MediaQuery.of(context).size.width - 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Давление",
                style: TextStyle(
                  color: WeatherColors.bleak,
                  fontSize: 20,
                ),
              ),
              Text(
                "$pressure мм/рс",
                style: const TextStyle(
                  color: WeatherColors.bleak,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Влажность",
                style: TextStyle(
                  color: WeatherColors.bleak,
                  fontSize: 20,
                ),
              ),
              Text(
                "$humidity%",
                style: const TextStyle(
                  color: WeatherColors.bleak,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
