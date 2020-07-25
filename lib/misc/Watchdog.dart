import 'package:http/http.dart' as http;
import '../HypixelAPI.dart';

class Watchdog {

  Watchdog();

  Future<String> get() async {
    var url = HypixelAPI.BASE + 'watchdogstats?key=${HypixelAPI.API_KEY}';
    var response = await http.get(url);
    return response.body;
  }
}