import 'package:hive_flutter/hive_flutter.dart';

class CityListHive {
  Future<void> put(List<String> nameCity) async {
    final Box buttonListBox = await Hive.openBox<List<String>>("buttonListBox");
    buttonListBox.put("buttonListBox", nameCity);
  }

  Future<List<String>> get() async {
    final Box buttonListBox = await Hive.openBox<List<String>>("buttonListBox");
    final List<String> result = (buttonListBox.isNotEmpty)
        ? buttonListBox.get("buttonListBox") as List<String>
        : [];

    return result;
  }

  Future<void> clean() async {
    final Box buttonListBox = await Hive.openBox<List<String>>("buttonListBox");
    buttonListBox.delete("buttonListBox");
    buttonListBox.put("buttonListBox", <String>[]);
  }
}
