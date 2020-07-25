import 'package:http/http.dart' as http;
import '../HypixelAPI.dart';
import '../utils/ConverterUtils.dart';

class Profile {

  Profile();
  ConverterUtils utils = ConverterUtils();

  var url = null;
  var response = null;

  Future<String> getById(String id) async {
    url = HypixelAPI.BASE + 'skyblock?key=${HypixelAPI.API_KEY}&profile=${id}';
    response = await http.get(url);
    return response.body;
  }

  Future<String> getProfilesByUuid(String uuid) async {
    url = HypixelAPI.BASE + 'skyblock?key=${HypixelAPI.API_KEY}&profiles=${uuid}';
    response = await http.get(url);
    return response.body;
  }


  Future<String> getProfilesByName(String name) async {
    return getProfilesByUuid(utils.convertNameToUuid(name).toString());
  }

}