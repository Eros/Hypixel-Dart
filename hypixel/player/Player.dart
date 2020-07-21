import 'dart:async';
import 'dart:convert';
import 'dart:io';

import '../HypixelAPI.dart';

class Player {

  Future getPlayerData([String name, String uuid]) {
    var completer = new Completer();
    if (name != null && uuid == null) {
        HttpClient().getUrl(Uri.parse(HypixelAPI.BASE + 'player?key=${HypixelAPI.API_KEY}&uuid=${uuid}'))
          .then((value) => value.close())
          .then((value) => value.transform(Utf8Decoder()).listen((e) {
            completer.complete(e);
        }));
      } else if(name == null && uuid != null) {
      //todo convert the name to a uuid
    }
      return completer.future;
  }
}