import 'package:flutter/material.dart';
import 'package:glass/glass.dart';
import 'package:rive/rive.dart';
import 'package:weather_app2/data/http_request.dart';
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
      body: FutureBuilder(
        future: ApiClient().getWeatherDefault(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: RiveAnimation.asset("assets/rive/load.riv"),
            );
          }
          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          } else {
            return Stack(
              children: [
                Transform.translate(
                  offset: const Offset(-150, -300),
                  child: RiveAnimation.asset(
                    bgIcon(snapshot.data!.weather[0]["main"].toString()),
                  ),
                ),
                Column(
                  children: [
                    DateAndDrawerWidget(
                      cityName: snapshot.data!.name,
                      weatherDescription:
                          snapshot.data!.weather[0]["description"].toString(),
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        TempWidget(
                          minTemp: snapshot.data!.main["temp_min"] as double,
                          maxTemp: snapshot.data!.main["temp_max"] as double,
                          temp: snapshot.data!.main["temp"] as double,
                          feelsLike:
                              snapshot.data!.main["feels_like"] as double,
                        ),
                        const LineUIExample(),
                        WinterWidget(
                          deg: snapshot.data!.wind["deg"] as num,
                          gust: snapshot.data!.wind["gust"] as num,
                          speed: snapshot.data!.wind["speed"] as num,
                        ),
                        const LineUIExample(),
                        OtherWeatherDataWidget(
                          humidity: snapshot.data!.main["humidity"] as num,
                          pressure: snapshot.data!.main["pressure"] as num,
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
            );
          }
        },
      ),
    );
  }
}
