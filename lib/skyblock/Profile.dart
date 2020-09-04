import 'package:http/http.dart' as http;
import 'package:hypixel_dart/utils/RequestBuilder.dart';
import '../HypixelAPI.dart';
import '../utils/ConverterUtils.dart';
import 'dart:async';

class Profile {

  Profile();
  ConverterUtils utils = ConverterUtils();

  Future<String> getById(String id) async {
    return new RequestBuilder(HypixelAPI.BASE + 'skyblock?key=${HypixelAPI.API_KEY}&profile=${id}').get();
  }

  Future<String> getProfilesByUuid(String uuid) async {
    return new RequestBuilder(HypixelAPI.BASE + 'skyblock?key=${HypixelAPI.API_KEY}&profiles=${uuid}').get();
  }


  Future<String> getProfilesByName(String name) async {
    return getProfilesByUuid(utils.convertNameToUuid(name).toString());
  }

}