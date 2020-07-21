
import 'dart:convert';
import 'dart:io';

import '../HypixelAPI.dart';

class Auction {

  Auction();

  //this code is really bad ik it needs improvement

  String getAuctionData([String name, String uuid, String profile, int page]) {
    if (name != null) {
      HttpClient().getUrl(Uri.parse('${HypixelAPI.BASE}auction?key=${HypixelAPI.API_KEY}&uuid=${uuid}'))
          .then((request) => request.close())
          .then((response) => response.transform(Utf8Decoder()).listen((e) {
        return e.toString();
      }));
    } else if(uuid != null) {
      HttpClient().getUrl(Uri.parse('${HypixelAPI.BASE}auction?key=${HypixelAPI.API_KEY}&name=${name}'))
          .then((request) => request.close())
          .then((response) => response.transform(Utf8Decoder()).listen((e) {
        return e.toString();
      }));
    } else if(profile != null) {
      HttpClient().getUrl(Uri.parse('${HypixelAPI.BASE}auction?key=${HypixelAPI.API_KEY}&profile=${profile}'))
          .then((request) => request.close())
          .then((response) => response.transform(Utf8Decoder()).listen((e) {
        return e.toString();
      }));
    } else if(page != null) {
      HttpClient().getUrl(Uri.parse('${HypixelAPI.BASE}auction?key=${HypixelAPI.API_KEY}&page=${page}'))
          .then((request) => request.close())
          .then((response) => response.transform(Utf8Decoder()).listen((e) {
        return e.toString();
      }));
    }
  }
}