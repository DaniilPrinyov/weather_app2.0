import 'package:flutter/material.dart';
import 'package:glass/glass.dart';
import 'package:rive/rive.dart';
import 'package:weather_app2/internal/weather_date_vars.dart';
import 'package:weather_app2/presentation/ui_data/colors.dart';
import 'package:weather_app2/presentation/ui_logic/bg_icon.dart';
import 'package:weather_app2/presentation/widgets/custom_app_bar_widget.dart';
import 'package:weather_app2/presentation/widgets/examples/line_ui_example.dart';
import 'package:weather_app2/presentation/widgets/other_weather_data_widget.dart';
import 'package:weather_app2/presentation/widgets/temp_widget.dart';
import 'package:weather_app2/presentation/widgets/winter_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: WeatherColors.white,
      body: Stack(
        children: [
          Transform.translate(
            offset: const Offset(-150, -300),
            child: RiveAnimation.asset(
              bgIcon("clear sky"),
            ),
          ),
          Column(
            children: [
              DateAndDrawerWidget(
                cityName: name,
                weatherDescription: mainWeather,
              ),
              const Spacer(),
              Column(
                children: [
                  TempWidget(
                    minTemp: tempMin,
                    maxTemp: tempMax,
                    temp: temp,
                    feelsLike: feelsLike,
                  ),
                  const LineUIExample(),
                  WinterWidget(
                    deg: deg,
                    gust: gust,
                    speed: speed,
                  ),
                  const LineUIExample(),
                  OtherWeatherDataWidget(
                    humidity: humidity,
                    pressure: pressure,
                  ),
                  const SizedBox(height: 35),
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
