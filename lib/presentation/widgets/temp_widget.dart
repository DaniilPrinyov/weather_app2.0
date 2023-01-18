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

  final int minTemp;
  final int maxTemp;
  final int temp;
  final int feelsLike;

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
                    "$temp℃",
                    style: const TextStyle(
                      color: WeatherColors.bleak,
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Ощущается как $feelsLike ℃",
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
        ],
      ),
    );
  }
}
