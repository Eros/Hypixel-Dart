import 'package:http/http.dart' as http;
import '../HypixelAPI.dart';

class GameCounts {

  GameCounts();

  Future<String> get() async {
    var url = HypixelAPI.BASE + 'gameCounts?key=${HypixelAPI.API_KEY}';
    var response = await http.get(url);
    return response.body;
  }

}