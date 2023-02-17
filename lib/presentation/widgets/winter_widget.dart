import 'package:flutter/material.dart';
import 'package:weather_app2/presentation/ui_data/colors.dart';

class WinterWidget extends StatelessWidget {
  const WinterWidget({
    super.key,
    required this.speed,
    required this.deg,
    required this.gust,
  });

  final String speed;
  final num deg;
  final String gust;

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
                    "$speed м/с",
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
                  if (deg == -1)
                    const Text(
                      "-",
                      style: TextStyle(
                        color: WeatherColors.bleak,
                        fontSize: 20,
                      ),
                    )
                  else
                    Transform.rotate(
                      angle: deg.toDouble(),
                      child: const Icon(Icons.arrow_forward_rounded),
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
                    "$gust м/с",
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
