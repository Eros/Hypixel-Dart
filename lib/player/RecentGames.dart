import 'package:http/http.dart' as http;
import '../HypixelAPI.dart';
import '../utils/ConverterUtils.dart';

class RecentGames {

  RecentGames();
  ConverterUtils utils = ConverterUtils();

  var url = null;
  var response = null;

  Future<String> getByUuid(String uuid) async {
    url = HypixelAPI.BASE + 'recentgames?key=${HypixelAPI.API_KEY}&uuid=${uuid}';
    response = await http.get(url);
    return response.body;
  }

  Future<String> getByName(String name) async {
    var uuid = await utils.convertNameToUuid(name);
    return getByUuid(uuid);
  }
}