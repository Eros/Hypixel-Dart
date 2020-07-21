import 'dart:convert';
import 'dart:io';

import '../HypixelAPI.dart';

class Profile {

  Profile();

  String getProfileData([String name, String profileId]) {
    HttpClient().getUrl(Uri.parse('${HypixelAPI.BASE}profile?key=${HypixelAPI.API_KEY}&profile=${profileId}'))
        .then((request) => request.close())
        .then((response) => response.transform(Utf8Decoder()).listen((e) {
      return e.toString();
    }));
  }

  String getProfiles([String name, String uuid]) {
    HttpClient().getUrl(Uri.parse('${HypixelAPI.BASE}profiles?key=${HypixelAPI.API_KEY}&uuid=${uuid}'))
        .then((request) => request.close())
        .then((response) => response.transform(Utf8Decoder()).listen((e) {
      return e.toString();
    }));
  }
}