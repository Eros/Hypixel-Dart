
class HypixelAPI {
  static String API_KEY = "";
  static String BASE = "https://api.hypixel.net/";

  HypixelAPI(String key);

  String get getApiKey { return API_KEY; }

  String get getBase { return BASE; }

  factory HypixelAPI.newApi(String key) {
    if (key != null) {
      API_KEY = key;
    }
    return new HypixelAPI(key);
  }
}