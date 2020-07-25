
import '../HypixelAPI.dart';
import '../player/Player.dart';

import 'dart:convert';

void main() {

  HypixelAPI api = HypixelAPI();
  api.setApiKey("6cba0922-187d-4b38-84eb-10d292cbe0d5");

  Player player = Player();

  {
    player.getData();
  }
}
