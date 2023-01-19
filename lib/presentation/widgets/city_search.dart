import 'package:flutter/material.dart';
import 'package:weather_app2/data/http_request.dart';
import 'package:weather_app2/domain/repository/hive_storage.dart';
import 'package:weather_app2/presentation/ui_data/colors.dart';
import 'package:weather_app2/presentation/widgets/examples/city_search_button_example.dart';

final List<String> cityList = [];
final myController = TextEditingController();

class CitySearchButton extends StatelessWidget {
  const CitySearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Выберете город'),
          content: const CitySearchWidget(),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(
                  WeatherColors.bleak.withOpacity(0.2),
                ),
              ),
              child: const Text(
                'Отмена',
                style: TextStyle(
                  color: WeatherColors.bleak,
                  fontSize: 20,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                if (myController.text != "") {
                  CityListHive().put(myController.text);
                  getHttp(myController.text);
                  Navigator.pop(context);
                  myController.text = "";
                } else {
                  Navigator.pop(context);
                }
              },
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(
                  WeatherColors.bleak.withOpacity(0.2),
                ),
              ),
              child: const Text(
                'Ок',
                style: TextStyle(
                  color: WeatherColors.bleak,
                  fontSize: 20,
                ),
              ),
            ),
          ],
          backgroundColor: WeatherColors.white,
          elevation: 0,
        ),
      ),
      icon: const Icon(
        Icons.map_rounded,
        color: WeatherColors.bleak,
        size: 50,
      ),
    );
  }
}

class CitySearchWidget extends StatelessWidget {
  const CitySearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: Column(
        children: [
          TextField(
            controller: myController,
            cursorColor: WeatherColors.bleak,
            onChanged: (value) {},
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  if (myController.text != "") {
                    CityListHive().put(myController.text);
                    getHttp(myController.text);
                    Navigator.pop(context);
                    myController.text = "";
                  } else {
                    Navigator.pop(context);
                  }
                },
                icon: const Icon(
                  Icons.arrow_forward_rounded,
                  color: WeatherColors.bleak,
                ),
              ),
              border: const OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.all(Radius.circular(24)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: 3,
                  color: WeatherColors.bleak,
                ),
                borderRadius: BorderRadius.all(Radius.circular(24)),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text("Последние:"),
          Container(
            margin: const EdgeInsets.only(top: 5),
            height: 120,
            width: 300,
            child: FutureBuilder(
              builder: (context, snapshot) {
                ListView.builder(
                  itemCount: CityListHive().length(),
                  itemBuilder: (context, index) {
                    return CityNameButton(
                      cityName: CityListHive()
                          .get(CityListHive().length() - index - 1),
                      inController: (p0) {
                        myController.text = CityListHive()
                            .get(CityListHive().length() - index - 1);
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
