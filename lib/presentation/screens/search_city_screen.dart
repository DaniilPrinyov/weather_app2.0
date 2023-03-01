import 'package:flutter/material.dart';
import 'package:glass/glass.dart';
import 'package:rive/rive.dart';
import 'package:weather_app2/data/http_request.dart';
import 'package:weather_app2/presentation/alerts/city_not_found.dart';
import 'package:weather_app2/presentation/screens/home_screen.dart';
import 'package:weather_app2/presentation/ui_data/colors.dart';
import 'package:weather_app2/presentation/ui_logic/bg_icon.dart';
import 'package:weather_app2/presentation/ui_logic/null_checer.dart';
import 'package:weather_app2/presentation/widgets/city_search_button.dart';
import 'package:weather_app2/presentation/widgets/dare_and_city_name_widget.dart';
import 'package:weather_app2/presentation/widgets/examples/line_ui_example.dart';
import 'package:weather_app2/presentation/widgets/go_home_button.dart';
import 'package:weather_app2/presentation/widgets/other_weather_data_widget.dart';
import 'package:weather_app2/presentation/widgets/temp_widget.dart';
import 'package:weather_app2/presentation/widgets/winter_widget.dart';

class SearchCity extends StatelessWidget {
  const SearchCity({
    super.key,
    required this.nameCity,
  });
  final String nameCity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: WeatherColors.white,
      body: FutureBuilder(
        future: ApiClient().getWeather(nameCity),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: RiveAnimation.asset("assets/rive/load.riv"),
            );
          }
          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          } else {
            if (snapshot.data?.cod != 400) {
              return Stack(
                children: [
                  Transform.translate(
                    offset: const Offset(-150, -300),
                    child: RiveAnimation.asset(
                      bgIcon(
                        snapshot.data!.weather![0]["main"].toString(),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DateAndCityName(
                            cityName: snapshot.data!.name!,
                            weatherDescription: snapshot
                                .data!.weather![0]["description"]
                                .toString(),
                          ),
                          Column(
                            children: const [
                              CitySearchButton(),
                              GoHomeButton(),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height - 350,
                        child: ListView(
                          padding: const EdgeInsetsDirectional.symmetric(
                            horizontal: 10,
                          ),
                          children: [
                            TempWidget(
                              minTemp:
                                  nullChecker(snapshot.data!.main!["temp_min"]),
                              maxTemp:
                                  nullChecker(snapshot.data!.main!["temp_max"]),
                              temp: nullChecker(snapshot.data!.main!["temp"]),
                              feelsLike: nullChecker(
                                snapshot.data!.main!["feels_like"],
                              ),
                            ),
                            const LineUIExample(),
                            WinterWidget(
                              deg: (snapshot.data!.wind!["deg"] != null)
                                  ? snapshot.data!.wind!["deg"] as num
                                  : -1,
                              gust: nullChecker(snapshot.data!.wind!["gust"]),
                              speed: nullChecker(snapshot.data!.wind!["speed"]),
                            ),
                            const LineUIExample(),
                            OtherWeatherDataWidget(
                              humidity:
                                  nullChecker(snapshot.data!.main!["humidity"]),
                              pressure:
                                  nullChecker(snapshot.data!.main!["pressure"]),
                            ),
                            const SizedBox(height: 35),
                          ],
                        ),
                      ),
                    ],
                  ).asGlass(
                    blurX: 30,
                    blurY: 30,
                  ),
                ],
              );
            } else {
              return const CityNotFount();
            }
          }
        },
      ),
    );
  }
}
