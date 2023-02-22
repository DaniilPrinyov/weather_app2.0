import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:weather_app2/internal/app.dart';

Future<void> main() async {
  await Hive.initFlutter();
  runApp(const App());
}
