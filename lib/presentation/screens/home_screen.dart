import 'package:flutter/material.dart';
import 'package:glass/glass.dart';
import 'package:rive/rive.dart';
import 'package:weather_app2/presentation/ui_data/colors.dart';
import 'package:weather_app2/presentation/ui_logic/bg_icon.dart';
import 'package:weather_app2/presentation/widgets/custom_app_bar_widget.dart';
import 'package:weather_app2/presentation/widgets/examples/line_ui_example.dart';
import 'package:weather_app2/presentation/widgets/other_weather_data_widget.dart';
import 'package:weather_app2/presentation/widgets/weather_for_hour_list_widget.dart';
import 'package:weather_app2/presentation/widgets/temp_widget.dart';
import 'package:weather_app2/presentation/widgets/winter_widget.dart';

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
                weatherDescription: "Ясно",
              ),
              const Spacer(),
              Column(
                children: const [
                  TempWidget(
                    minTemp: 18,
                    maxTemp: 23,
                    temp: 20,
                    feelsLike: 13,
                  ),
                  LineUIExample(),
                  WinterWidget(
                    deg: '13.99',
                    gust: '156',
                    speed: '5.88',
                  ),
                  LineUIExample(),
                  OtherWeatherDataWidget(
                    humidity: "94",
                    pressure: "1016",
                  ),
                  // WeatherForHourListWidget(
                  //   weatherDataMap: ["rain", 22, 12],
                  // ),
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
