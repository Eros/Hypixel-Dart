
class HypixelAPI {
  static String API_KEY = "";

  HypixelAPI(String key);

  String get getApiKey { return API_KEY; }

  factory HypixelAPI.newApi(String key) {
    if (key != null) {
      API_KEY = key;
    }
    return new HypixelAPI(key);
  }
}