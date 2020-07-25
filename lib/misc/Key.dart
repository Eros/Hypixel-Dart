import 'package:http/http.dart' as http;
import '../HypixelAPI.dart';

class Key {

  Key();

  Future<String> get() async {
    var url = HypixelAPI.BASE + 'key?key=${HypixelAPI.API_KEY}';
    var response = await http.get(url);
    return response.body;
  }

}