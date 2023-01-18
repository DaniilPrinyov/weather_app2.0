import 'package:flutter/material.dart';
import 'package:weather_app2/presentation/ui_data/colors.dart';
import 'package:weather_app2/presentation/ui_data/weather_icons.dart';
import 'package:weather_app2/presentation/widgets/examples/line_ui_example.dart';

class WinterWidget extends StatelessWidget {
  const WinterWidget({
    super.key,
    required this.speed,
    required this.deg,
    required this.gust,
  });

  final String speed;
  final String deg;
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
                  Text(
                    "$degº",
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
