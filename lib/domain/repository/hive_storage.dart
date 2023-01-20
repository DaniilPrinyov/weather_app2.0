import 'package:hive/hive.dart';

class CityListHive {
  Future<void> put(List<String> nameCity) async {
    final Box buttonListBox = await Hive.openBox<List<String>>("buttonListBox");
    buttonListBox.put("buttonListBox", nameCity);
    buttonListBox.close();
  }

  Future<List<String>> get() async {
    final Box buttonListBox = await Hive.openBox("buttonListBox");
    final List<String> result = (buttonListBox.isNotEmpty)
        ? buttonListBox.get("buttonListBox") as List<String>
        : [];
    buttonListBox.close();

    return result;
  }

  Future<void> clean() async {
    final Box buttonListBox = await Hive.openBox<List<String>>("buttonListBox");
    buttonListBox.delete("buttonListBox");
    buttonListBox.close();
  }
}
