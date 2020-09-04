import 'package:hypixel_dart/utils/RequestBuilder.dart';
import '../HypixelAPI.dart';
import 'dart:async';

class Bazaar {

  Bazaar();

  Future<String> getBazaar() async {
    return new RequestBuilder(HypixelAPI.BASE + 'skyblocks/bazaar').get();
  }

}