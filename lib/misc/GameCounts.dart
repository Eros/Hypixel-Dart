import 'dart:async';
import 'package:hypixel_dart/utils/RequestBuilder.dart';
import '../HypixelAPI.dart';

class GameCounts {

  GameCounts();

  Future<String> get() async {
    return new RequestBuilder(HypixelAPI.BASE + 'gameCounts?key=${HypixelAPI.API_KEY}').get();
  }
}