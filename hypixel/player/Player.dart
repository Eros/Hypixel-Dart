import 'dart:async';
import 'dart:convert';
import 'dart:io';

import '../HypixelAPI.dart';

class Player {

  Player();

  static String getPlayerData([String uuid, String name]) {
    String data = "";
    HttpClient().getUrl(Uri.parse('${HypixelAPI.BASE} player?key=${HypixelAPI.API_KEY}&uuid=${uuid}'))
    .then((request) => request.close())
    .then((response) => response.transform(Utf8Decoder()).listen((event) {
      data = event.toString();
    }));
    return data;
  }
}