import 'package:hypixel_dart/utils/RequestBuilder.dart';
import '../HypixelAPI.dart';
import '../utils/ConverterUtils.dart';
import 'dart:async';

class Auction {

  Auction();
  ConverterUtils utils = ConverterUtils();

  var url = null;
  var response = null;

  Future<String> getByName(String name) async {
    return new RequestBuilder(HypixelAPI.BASE + 'skyblock/auction?key=${HypixelAPI.API_KEY}&player=${name}').get();
  }

  Future<String> getById(String id) async {
    return new RequestBuilder(HypixelAPI.BASE + 'skyblock/auction?key=${HypixelAPI.API_KEY}&profile=${id}').get();
  }

  Future<String> getByUuid(String uuid) async {
    return new RequestBuilder(HypixelAPI.BASE + 'skyblock/auction?key=${HypixelAPI.API_KEY}&player=${uuid}').get();
  }

  Future<String> getByPage(String page) async {
    return new RequestBuilder('skyblock/auctions?key=${HypixelAPI.API_KEY}&page=${page}').get();
  }
}