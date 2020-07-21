import 'dart:convert';
import 'dart:io';

import '../HypixelAPI.dart';

class Session {

  Session();

  String getSessionData([String name, String uuid]) {
    HttpClient().getUrl(Uri.parse('${HypixelAPI.BASE}status?key=${HypixelAPI.API_KEY}&uuid=${uuid}'))
        .then((request) => request.close())
        .then((response) => response.transform(Utf8Decoder()).listen((e) {
      return e.toString();
    }));
  }
}