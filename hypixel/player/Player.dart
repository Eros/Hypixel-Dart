import 'package:http/http.dart' as http;
import '../HypixelAPI.dart';

class Player {
  Player();

  Future<String> getData() async {
    var url = HypixelAPI.BASE + 'player?key=${HypixelAPI.API_KEY}&uuid=${HypixelAPI.TEST_UUID}';
    var response = await http.get(url);
    print(response.body);
    return response.body;
  }
}