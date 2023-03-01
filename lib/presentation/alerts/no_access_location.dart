import 'package:flutter/material.dart';
import 'package:weather_app2/presentation/screens/home_screen.dart';

class NoAccessLocation extends StatelessWidget {
  const NoAccessLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.redAccent,
      title: const Text(
        "Данному приложению требуется доступ с вашей геопозиции",
        style: TextStyle(
          color: Colors.yellow,
        ),
      ),
      content: const Text(
        "Пожалуйста предоставьте данный доступ в настройках если вы отказали в доступе при запуске или данный запрос не отобразился у вас при запуске.",
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
