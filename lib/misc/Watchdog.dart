import 'dart:async';

import 'package:hypixel_dart/utils/RequestBuilder.dart';
import '../HypixelAPI.dart';

class Watchdog {

  Watchdog();

  Future<String> get() async {
    return new RequestBuilder(HypixelAPI.BASE + 'watchdogstats?key=${HypixelAPI.API_KEY}').get();
  }
}