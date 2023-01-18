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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Скорость ветра $speed м/с",
                    style: const TextStyle(
                      color: WeatherColors.bleak,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Направление ветра $degº",
                    style: const TextStyle(
                      color: WeatherColors.bleak,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Порывы до $gust м/с",
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
