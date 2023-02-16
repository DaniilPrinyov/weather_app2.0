import 'package:flutter/material.dart';
import 'package:weather_app2/presentation/ui_data/colors.dart';

class WinterWidget extends StatelessWidget {
  const WinterWidget({
    super.key,
    required this.speed,
    required this.deg,
    required this.gust,
  });

  final num speed;
  final num deg;
  final num gust;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: MediaQuery.of(context).size.width - 50,
      child: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Скорость ветра",
                    style: TextStyle(
                      color: WeatherColors.bleak,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "${speed.round()} м/с",
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
                    "Направление ветра",
                    style: TextStyle(
                      color: WeatherColors.bleak,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "${deg.round()}º",
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
                    "Порывы до",
                    style: TextStyle(
                      color: WeatherColors.bleak,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "${(gust == 0) ? "-" : gust.round()} м/с",
                    style: const TextStyle(
                      color: WeatherColors.bleak,
                      fontSize: 20,
                    ),
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
