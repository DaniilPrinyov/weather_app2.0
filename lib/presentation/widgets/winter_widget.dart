import 'package:flutter/material.dart';
import 'package:weather_app2/presentation/widgets/examples/line_ui_example.dart';

class WinterWidget extends StatelessWidget {
  const WinterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 50,
      child: Column(
        children: const [
          Text("Скорость ветра"),
          LineUIExample(),
        ],
      ),
    );
  }
}
