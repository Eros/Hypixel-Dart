import 'package:http/http.dart' as http;
import '../HypixelAPI.dart';

class Boosters {

  Boosters();

  Future<String> get() async {
   var url = HypixelAPI.BASE + 'boosters?key=${HypixelAPI.API_KEY}';
   var response = await http.get(url);
   return response.body;
  }

}