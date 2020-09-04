import 'package:hypixel_dart/utils/RequestBuilder.dart';
import '../HypixelAPI.dart';
import 'dart:async';

class News {

  News();

  Future<String> getNews() async {
    return new RequestBuilder( HypixelAPI.BASE + 'skyblock/news?key=${HypixelAPI.API_KEY}').get();
  }

}