import 'package:http/http.dart' as http;
import '../HypixelAPI.dart';
import '../utils/ConverterUtils.dart';

class Player {

  Player();
  ConverterUtils utils = ConverterUtils();

  var url = null;
  var response = null;

  Future<String> getByUuid(String uuid) async {
    url = HypixelAPI.BASE + 'player?key=${HypixelAPI.API_KEY}&uuid=${uuid}';
    response = await http.get(url);
    return response.body;
  }

  Future<String> getByName(String name) async {
    Future<String> uuid = utils.convertNameToUuid(name);
    return getByUuid(uuid.toString());
  }

  Future<String> getFriendsByUuid(String uuid) async {
    url = HypixelAPI.BASE + 'friends?key=${HypixelAPI.API_KEY}&uuid=${uuid}';
    response = await http.get(url);
    return response.body;
  }

  Future<String> getFriendsByName(String name) async {
    return getFriendsByUuid(utils.convertNameToUuid(name).toString());
  }
}