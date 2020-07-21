
import '../HypixelAPI.dart';
import '../player/Player.dart';

HypixelAPI api = HypixelAPI.newApi("");

String test = Player.getPlayerData("43db704e10b140b3a38dce059de35a59");

void main() {
  print(test);
}
