import 'package:http/http.dart' as http;
import '../HypixelAPI.dart';
import '../utils/ConverterUtils.dart';

class Session {

  Session();
  ConverterUtils utils = ConverterUtils();

  var url = null;
  var response = null;

  Future<String> getSessionByUuid(String uuid) async {
    url = HypixelAPI.BASE + 'status?key=${HypixelAPI.API_KEY}&uuid=${uuid}';
    response = await http.get(url);
    return response.body;
  }

  Future<String> getSessionByName(String name) async {
    var uuid = await utils.convertNameToUuid(name);
    return getSessionByUuid(uuid);
  }

}