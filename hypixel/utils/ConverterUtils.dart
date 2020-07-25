import 'dart:convert';

import 'package:http/http.dart' as http;

class ConverterUtils {

  ConverterUtils();

  Future<String> convertNameToUuid(String name) async {
    String url = 'https://api.mojang.com/users/profiles/minecraft/${name}';
    var response = await http.get(url);
    Map<String, dynamic> returnData = jsonDecode(response.body);
    return returnData['id'];
  }
}