import 'package:hive/hive.dart';

class CityListHive {
  Future<void> put(String nameCity) async {
    final Box buttonListBox = await Hive.openBox<String>("buttonListBox");
    buttonListBox.add(nameCity);
    buttonListBox.close();
  }

  Future<int> length() async {
    final Box buttonListBox = await Hive.openBox<String>("buttonListBox");
    final int result = buttonListBox.length;
    buttonListBox.close();
    return result;
  }

  Future<String> get(int index) async {
    final Box buttonListBox = await Hive.openBox<List<String>>("buttonListBox");
    final String result = buttonListBox.getAt(index) as String;
    buttonListBox.close();
    return result;
  }
}
