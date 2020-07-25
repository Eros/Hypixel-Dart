import 'package:http/http.dart' as http;
import '../HypixelAPI.dart';
import '../player/Player.dart';

class PlayerCounts {

  PlayerCounts();

  Future<String> get() async {
    var url = HypixelAPI.BASE + 'playerCounts?key=${HypixelAPI.API_KEY}';
    var response = await http.get(url);
    return response.body;
  }
}