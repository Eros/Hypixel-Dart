import 'package:http/http.dart' as http;
import '../HypixelAPI.dart';

class Player {
  Player();

  var url = null;
  var response = null;

  Future<String> getByUuid(String uuid) async {
    url = HypixelAPI.BASE + 'player?key=${HypixelAPI.API_KEY}&uuid=${uuid}';
    response = await http.get(url);
    print(response.body);
    return response.body;
  }

  Future<String> getByName(String name) async {
    
  }
}