import 'dart:async';
import 'package:hypixel_dart/utils/RequestBuilder.dart';
import '../HypixelAPI.dart';

class Leaderboard {

  Leaderboard();

  Future<String> getLeaderboards() async {
    return new RequestBuilder(HypixelAPI.BASE +'leaderboards?key=${HypixelAPI.API_KEY}').get();
  }
}