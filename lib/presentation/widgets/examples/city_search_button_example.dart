import 'package:flutter/material.dart';
import 'package:weather_app2/presentation/screens/search_city_screen.dart';
import 'package:weather_app2/presentation/ui_data/colors.dart';

class CityNameButton extends StatelessWidget {
  const CityNameButton({
    super.key,
    required this.cityName,
  });

  final String cityName;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => SearchCity(nameCity: cityName),
          ),
        );
      },
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
