import 'package:flutter/material.dart';
import 'package:weather_app2/presentation/ui_data/colors.dart';

class LineUIExample extends StatelessWidget {
  const LineUIExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 50,
      height: 4,
      color: WeatherColors.bleak,
    );
  }
}
