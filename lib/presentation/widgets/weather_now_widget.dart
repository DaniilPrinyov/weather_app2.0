import 'package:flutter/material.dart';
import 'package:weather_app2/presentation/ui_data/colors.dart';

class WeatherNowWidget extends StatelessWidget {
  const WeatherNowWidget({
    super.key,
    required this.minTemp,
    required this.maxTemp,
    required this.temp,
    required this.weatherDescription,
  });

  final int minTemp;
  final int maxTemp;
  final int temp;
  final String weatherDescription;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "$temp℃",
                style: const TextStyle(
                  color: WeatherColors.bleak,
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_upward_rounded,
                        color: WeatherColors.bleak,
                      ),
                      Text(
                        "$maxTemp℃",
                        style: const TextStyle(
                          color: WeatherColors.bleak,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_downward_rounded,
                        color: WeatherColors.bleak,
                      ),
                      Text(
                        "$minTemp℃",
                        style: const TextStyle(
                          color: WeatherColors.bleak,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width - 50,
            height: 4,
            color: WeatherColors.bleak,
          ),
          Text(
            weatherDescription,
            style: const TextStyle(
              color: WeatherColors.bleak,
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
