import 'package:http/http.dart' as http;
import '../HypixelAPI.dart';
import '../utils/ConverterUtils.dart';

class Auction {

  Auction();
  ConverterUtils utils = ConverterUtils();

  var url = null;
  var response = null;

  Future<String> getByName(String name) async {
    url = HypixelAPI.BASE + 'skyblock/auction?key=${HypixelAPI.API_KEY}&player=${name}';
    response = await http.get(url);
    return response.body;
  }

  Future<String> getById(String id) async {
    url = HypixelAPI.BASE + 'skyblock/auction?key=${HypixelAPI.API_KEY}&profile=${id}';
    response = await http.get(url);
    return response.body;
  }

  Future<String> getByUuid(String uuid) async {
    url = HypixelAPI.BASE + 'skyblock/auction?key=${HypixelAPI.API_KEY}&player=${uuid}';
    response = await http.get(url);
    return response.body;
  }

  Future<String> getByPage(String page) async {
    url = HypixelAPI.BASE + 'skyblock/auctions?key=${HypixelAPI.API_KEY}&page=${page}';
    response = await http.get(url);
    return response.body;
  }
}