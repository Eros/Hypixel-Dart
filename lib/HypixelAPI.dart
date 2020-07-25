
class HypixelAPI {

  static String API_KEY = "";
  static const String BASE = "https://api.hypixel.net/";
  static const String TEST_UUID = "43db704e10b140b3a38dce059de35a59";

  HypixelAPI();

  String get getApiKey { return API_KEY; }
  String get getBase { return BASE; }

  void setApiKey(String key) {
    API_KEY = key;
  }

}