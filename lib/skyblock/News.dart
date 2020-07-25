import 'package:http/http.dart' as http;
import '../HypixelAPI.dart';

class News {

  News();

  Future<String> getNews() async {
    var url = HypixelAPI.BASE + 'skyblock/news?key=${HypixelAPI.API_KEY}';
    var response = await http.get(url);
    return response.body;
  }

}