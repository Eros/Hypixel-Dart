import 'package:http/http.dart' as http;
import 'dart:convert';

import '../HypixelAPI.dart';

class Player {
  Player();

  Future<http.Response> getData() async {
    var method = "";
    print(method);
    final response = await http.get(method);

    return response;
  }
}