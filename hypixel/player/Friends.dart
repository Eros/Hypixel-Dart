
import 'dart:convert';
import 'dart:io';

import '../HypixelAPI.dart';

class Friends {

  Friends();

  String getPlayerFriends([String uuid, String name]) {
    HttpClient().getUrl(Uri.parse('${HypixelAPI.BASE}friends?key=${HypixelAPI.API_KEY}&uuid=${uuid}'))
        .then((request) => request.close())
        .then((response) => response.transform(Utf8Decoder()).listen((e) {
          return e.toString();
    }));
  }
}