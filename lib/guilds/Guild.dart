import 'package:http/http.dart' as http;
import '../HypixelAPI.dart';
import '../utils/ConverterUtils.dart';

class Guild {

  Guild();
  ConverterUtils utils = ConverterUtils();

  var url = null;
  var response = null;

  Future<String> getByGuildId(String id) async {
    url = HypixelAPI.BASE + 'guild?key=${HypixelAPI.API_KEY}&id=${id}';
    response = await http.get(url);
    return response.body;
  }

  Future<String> getByPlayerUuid(String uuid) async {
    url = HypixelAPI.BASE + 'guild?key=${HypixelAPI.API_KEY}&player=${uuid}';
    response = await http.get(url);
    return response.body;
  }

  Future<String> getByPlayerName(String name) async {
    var uuid = await utils.convertNameToUuid(name);
    return getByPlayerUuid(uuid);
  }

  Future<String> getByGuildName(String name) async {
    url = HypixelAPI.BASE + 'guild?key=${HypixelAPI.API_KEY}&name=${name}';
    response = await http.get(url);
    return response.body;
  }
}