import 'package:flutter/material.dart';
import 'package:weather_app2/presentation/screens/home_screen.dart';

class CityNotFount extends StatelessWidget {
  const CityNotFount({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.redAccent,
      title: const Text(
        "Город с таким названием не найден",
        style: TextStyle(
          color: Colors.yellow,
        ),
      ),
      content: const Text(
        "Пожалуйста проверьте правильность написания названия города или его существование",
        style: TextStyle(
          color: Colors.yellow,
        ),
      ),
      actions: [
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.yellow),
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
          },
          child: const Text(
            "Ok",
            style: TextStyle(
              color: Colors.redAccent,
            ),
          ),
        ),
      ],
    );
  }
}
