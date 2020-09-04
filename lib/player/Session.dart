import 'package:hypixel_dart/utils/RequestBuilder.dart';
import '../HypixelAPI.dart';
import '../utils/ConverterUtils.dart';
import 'dart:async';

class Session {

  Session();
  ConverterUtils utils = ConverterUtils();

  var url = null;
  var response = null;

  Future<String> getSessionByUuid(String uuid) async {
    return new RequestBuilder(HypixelAPI.BASE + 'status?key=${HypixelAPI.API_KEY}&uuid=${uuid}').get();
  }

  Future<String> getSessionByName(String name) async {
    var uuid = await utils.convertNameToUuid(name);
    return getSessionByUuid(uuid);
  }

}