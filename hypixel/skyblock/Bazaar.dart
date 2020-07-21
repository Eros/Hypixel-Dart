import 'dart:convert';
import 'dart:io';

import '../HypixelAPI.dart';

class Bazaar {

  Bazaar();

  String getBazaarData() {
    HttpClient().getUrl(Uri.parse('${HypixelAPI.BASE}bazaar?key=${HypixelAPI.API_KEY}'))
        .then((request) => request.close())
        .then((response) => response.transform(Utf8Decoder()).listen((e) {
      return e.toString();
    }));
  }

}