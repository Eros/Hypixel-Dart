import 'dart:async';

import 'package:hypixel_dart/utils/RequestBuilder.dart';
import '../HypixelAPI.dart';

class Key {

  Key();

  Future<String> get() async {
    return new RequestBuilder(HypixelAPI.BASE + 'key?key=${HypixelAPI.API_KEY}').get();
  }

}