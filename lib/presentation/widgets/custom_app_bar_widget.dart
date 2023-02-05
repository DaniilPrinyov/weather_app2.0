import 'package:flutter/material.dart';
import 'package:weather_app2/presentation/ui_data/colors.dart';
import 'package:weather_app2/presentation/widgets/city_search.dart';

class DateAndDrawerWidget extends StatelessWidget {
  const DateAndDrawerWidget({
    super.key,
    required this.cityName,
    required this.weatherDescription,
  });

  final String cityName;
  final String weatherDescription;

  @override
  Widget build(BuildContext context) {
    final String dateText =
        "${DateTime.now().day.toString()}-${DateTime.now().month.toString()}-${DateTime.now().year.toString()}";
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
                  fontSize: 25,
                ),
              ),
              Text(
                weatherDescription,
                style: const TextStyle(
                  color: WeatherColors.bleak,
                  fontSize: 20,
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
