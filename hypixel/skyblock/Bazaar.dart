import 'package:http/http.dart' as http;
import '../HypixelAPI.dart';

class Bazaar {

  Bazaar();

  Future<String> getBazaar() async {
    var url = HypixelAPI.BASE + 'skyblocks/bazaar?key=${HypixelAPI.API_KEY}';
    var response = await http.get(url);
    return response.body;
  }

}