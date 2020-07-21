
import 'dart:convert';
import 'dart:io';

import '../HypixelAPI.dart';

class Leaderboard {

  Leaderboard();

  String getLeaderboards([String uuid, String name]) {
    HttpClient().getUrl(Uri.parse('${HypixelAPI.BASE}leaderboards?key=${HypixelAPI.API_KEY}'))
        .then((request) => request.close())
        .then((response) => response.transform(Utf8Decoder()).listen((e) {
          return e.toString();
    }));
  }
}