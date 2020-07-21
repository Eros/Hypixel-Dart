
import 'player/Player.dart';

class HypixelAPI {

  static String API_KEY = "";
  static String BASE = "https://api.hypixel.net/";

  HypixelAPI();

  String get getApiKey { return API_KEY; }
  String get getBase { return BASE; }

  void setApiKey(String key) {
    API_KEY = key;
  }

}