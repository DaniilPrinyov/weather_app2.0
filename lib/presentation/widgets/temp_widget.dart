import 'package:flutter/material.dart';
import 'package:weather_app2/presentation/ui_data/colors.dart';
import 'package:weather_app2/presentation/widgets/examples/line_ui_example.dart';

class TempWidget extends StatelessWidget {
  const TempWidget({
    super.key,
    required this.minTemp,
    required this.maxTemp,
    required this.temp,
    required this.feelsLike,
  });

  final num minTemp;
  final num maxTemp;
  final num temp;
  final num feelsLike;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${temp.round()}℃",
                    style: const TextStyle(
                      color: WeatherColors.bleak,
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Ощущается как ${feelsLike.round()} ℃",
                    style: const TextStyle(
                      color: WeatherColors.bleak,
                      fontSize: 20,
                    ),
                  ),
                ],
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
                        "${maxTemp.round()}℃",
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
                        "${minTemp.round()}℃",
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
        ],
      ),
    );
  }
}
