import 'dart:async';
import 'package:hypixel_dart/utils/RequestBuilder.dart';
import '../HypixelAPI.dart';

class Boosters {

  Boosters();

  Future<String> get() async {
   return new RequestBuilder(HypixelAPI.BASE + 'boosters?key=${HypixelAPI.API_KEY}').get();
  }

}