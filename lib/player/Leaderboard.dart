import 'dart:async';

import 'package:http/http.dart' as http;
import '../HypixelAPI.dart';

class Leaderboard {

  Leaderboard();

  Future<String> getLeaderboards() async {
    var url = HypixelAPI.BASE +'leaderboards?key=${HypixelAPI.API_KEY}';
    var response = await http.get(url);
    return response.body;
  }
}