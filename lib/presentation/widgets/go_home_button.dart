import 'package:flutter/material.dart';
import 'package:weather_app2/presentation/screens/home_screen.dart';
import 'package:weather_app2/presentation/ui_data/colors.dart';

class GoHomeButton extends StatelessWidget {
  const GoHomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
        );
      },
      icon: const Icon(
        Icons.home_rounded,
        color: WeatherColors.bleak,
        size: 50,
      ),
    );
  }
}
