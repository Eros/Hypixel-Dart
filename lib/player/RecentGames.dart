import 'dart:async';
import 'package:hypixel_dart/utils/RequestBuilder.dart';
import '../HypixelAPI.dart';
import '../utils/ConverterUtils.dart';

class RecentGames {

  RecentGames();
  ConverterUtils utils = ConverterUtils();

  Future<String> getByUuid(String uuid) async {
    return new RequestBuilder(HypixelAPI.BASE + 'recentgames?key=${HypixelAPI.API_KEY}&uuid=${uuid}').get();
  }

  Future<String> getByName(String name) async {
    var uuid = await utils.convertNameToUuid(name);
    return getByUuid(uuid);
  }
}