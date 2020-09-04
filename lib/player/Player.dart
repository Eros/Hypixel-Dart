import 'dart:async';
import 'package:hypixel_dart/utils/RequestBuilder.dart';
import '../HypixelAPI.dart';
import '../utils/ConverterUtils.dart';

class Player {

  Player();
  ConverterUtils utils = ConverterUtils();

  var url = null;
  var response = null;

  Future<String> getByUuid(String uuid) async {
    return new RequestBuilder(HypixelAPI.BASE + 'player?key=${HypixelAPI.API_KEY}&uuid=${uuid}').get();
  }

  Future<String> getByName(String name) async {
    var uuid = await utils.convertNameToUuid(name);
    return getByUuid(uuid);
  }

  Future<String> getFriendsByUuid(String uuid) async {
    return new RequestBuilder(HypixelAPI.BASE + 'friends?key=${HypixelAPI.API_KEY}&uuid=${uuid}').get();
  }

  Future<String> getFriendsByName(String name) async {
    var uuid = await utils.convertNameToUuid(name);
    return getFriendsByUuid(uuid);
  }
}