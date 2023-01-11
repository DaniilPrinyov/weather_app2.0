import 'package:flutter/material.dart';
import 'package:weather_app2/presentation/ui_data/colors.dart';
import 'package:weather_app2/presentation/widgets/city_search.dart';

class DateAndDrawerWidget extends StatelessWidget {
  const DateAndDrawerWidget({
    super.key,
    required this.dateText,
    required this.cityName,
  });

  final String dateText;
  final String cityName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 100,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                dateText,
                style: const TextStyle(
                  color: WeatherColors.bleak,
                  fontSize: 30,
                ),
              ),
              Text(
                cityName,
                style: const TextStyle(
                  color: WeatherColors.bleak,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ],
          ),
          const CitySearchButton(),
        ],
      ),
    );
  }
}
