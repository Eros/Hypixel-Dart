import 'dart:convert';
import 'dart:io';

import '../HypixelAPI.dart';

class News {

  News();


  String getNewsData() {
    HttpClient().getUrl(Uri.parse('${HypixelAPI.BASE}news?key=${HypixelAPI.API_KEY}'))
        .then((request) => request.close())
        .then((response) => response.transform(Utf8Decoder()).listen((e) {
      return e.toString();
    }));
  }
}