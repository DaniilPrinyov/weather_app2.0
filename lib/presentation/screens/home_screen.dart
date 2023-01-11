import 'package:flutter/material.dart';
import 'package:glass/glass.dart';
import 'package:rive/rive.dart';
import 'package:weather_app2/presentation/ui_data/colors.dart';
import 'package:weather_app2/presentation/ui_logic/bg_icon.dart';
import 'package:weather_app2/presentation/widgets/custom_app_bar_widget.dart';
import 'package:weather_app2/presentation/widgets/weather_for_hour_list_widget.dart';
import 'package:weather_app2/presentation/widgets/weather_now_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WeatherColors.white,
      body: Stack(
        children: [
          Transform.translate(
            offset: const Offset(-150, -300),
            child: RiveAnimation.asset(
              bgIcon("scattered clouds"),
            ),
          ),
          Column(
            children: [
              const DateAndDrawerWidget(
                cityName: "Москва",
                dateText: "2022-12-17",
              ),
              const Spacer(),
              Column(
                children: const [
                  WeatherNowWidget(
                    minTemp: 18,
                    maxTemp: 23,
                    temp: 20,
                    weatherDescription: "Ясно",
                  ),
                  SizedBox(height: 35),
                  WeatherForHourListWidget(
                    weatherDataMap: ["rain", 22, 12],
                  ),
                  SizedBox(height: 35),
                ],
              ),
            ],
          ).asGlass(
            blurX: 30,
            blurY: 30,
          ),
        ],
      ),
    );
  }
}
