import 'package:flutter/material.dart';
import 'package:weather_app2/presentation/ui_data/colors.dart';
import 'package:weather_app2/presentation/ui_logic/weater_Icon_choice.dart';

class OtherWeatherDataWidget extends StatelessWidget {
  const OtherWeatherDataWidget({
    super.key,
    required this.weatherDescription,
  });
  final String weatherDescription;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            weaterIconChoice("clear sky", DateTime.now().hour.toInt()),
            width: 70,
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
