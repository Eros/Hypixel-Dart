import 'dart:async';
import 'package:hypixel_dart/utils/RequestBuilder.dart';
import '../HypixelAPI.dart';

class PlayerCounts {

  PlayerCounts();

  Future<String> get() async {
    return new RequestBuilder(HypixelAPI.BASE + 'playerCounts?key=${HypixelAPI.API_KEY}').get();
  }
}