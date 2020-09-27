import 'dart:ffi';

class CountryData {
  CountryData._privateConstructor();

  static CountryData _ob = CountryData._privateConstructor();
  List<Double> data = [];

  static CountryData getInstance() {
    return _ob;
  }

  void setSData(Double ob) {
    if (data.length == 0) {
      data = [ob];
    } else
      data.add(ob);
  }

  List<Double> getSData() {
    return data;
  }
}
