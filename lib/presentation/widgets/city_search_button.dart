import 'package:flutter/material.dart';
import 'package:weather_app2/domain/repository/hive_storage.dart';
import 'package:weather_app2/presentation/screens/search_city_screen.dart';
import 'package:weather_app2/presentation/ui_data/colors.dart';
import 'package:weather_app2/presentation/widgets/examples/city_search_button_example.dart';

List<String> cityList = [];
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
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    CityListHive().clean();
                    cityList = [];
                    Navigator.pop(context);
                    myController.text = "";
                  },
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(
                      Colors.red.shade200,
                    ),
                  ),
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.pink,
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        myController.text = "";
                      },
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
                      onPressed: () async {
                        if (myController.text != "") {
                          cityList.add(myController.text);
                          CityListHive().put(cityList);
                          await Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  SearchCity(nameCity: myController.text),
                            ),
                          );
                          myController.text = "";
                        } else {
                          Navigator.pop(context);
                          myController.text = "";
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
                ),
              ],
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
                onPressed: () async {
                  if (myController.text != "") {
                    cityList.add(myController.text);
                    CityListHive().put(cityList);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            SearchCity(nameCity: myController.text),
                      ),
                    );
                    myController.text = "";
                  } else {
                    Navigator.pop(context);
                    myController.text = "";
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
            height: 9,
          ),
          const Text("Последние:"),
          Container(
            margin: const EdgeInsets.only(top: 5),
            height: 80,
            width: 300,
            child: FutureBuilder(
              future: CityListHive().get(),
              builder: (context, snapshot) => ListView.builder(
                itemCount: (snapshot.data != null) ? snapshot.data!.length : 10,
                itemBuilder: (context, index) {
                  return CityNameButton(
                    cityName: (snapshot.data != null)
                        ? snapshot.data![snapshot.data!.length - index - 1]
                        : "",
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
