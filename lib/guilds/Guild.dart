import 'dart:async';
import 'package:hypixel_dart/utils/RequestBuilder.dart';
import '../HypixelAPI.dart';
import '../utils/ConverterUtils.dart';

class Guild {

  Guild();
  ConverterUtils utils = ConverterUtils();

  Future<String> getByGuildId(String id) async {
    return new RequestBuilder(HypixelAPI.BASE + 'guild?key=${HypixelAPI.API_KEY}&id=${id}').get();
  }

  Future<String> getByPlayerUuid(String uuid) async {
    return  new RequestBuilder(HypixelAPI.BASE + 'guild?key=${HypixelAPI.API_KEY}&player=${uuid}').get();
  }

  Future<String> getByPlayerName(String name) async {
    var uuid = await utils.convertNameToUuid(name);
    return getByPlayerUuid(uuid);
  }

  Future<String> getByGuildName(String name) async {
    return new RequestBuilder(HypixelAPI.BASE + 'guild?key=${HypixelAPI.API_KEY}&name=${name}').get();
  }
}