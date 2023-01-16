import 'package:flutter/material.dart';
import 'package:weather_app2/presentation/ui_data/colors.dart';

class CityNameButton extends StatelessWidget {
  CityNameButton({
    super.key,
    required this.cityName,
    required this.inController,
  });

  final String cityName;
  Function(BuildContext)? inController;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => inController!(context),
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(
          WeatherColors.bleak.withOpacity(0.2),
        ),
      ),
      child: Text(
        cityName,
        style: const TextStyle(
          color: WeatherColors.bleak,
          fontSize: 17,
        ),
      ),
    );
  }
}
