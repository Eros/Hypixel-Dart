
import 'package:hypixel_dart/HypixelAPI.dart';
import 'package:hypixel_dart/player/Leaderboard.dart';
import 'package:hypixel_dart/player/Player.dart';

void main() async {

  HypixelAPI api = HypixelAPI();
  /*
  NOTE:

  This key is no longer valid nor working and has since been replaced
  it's primary purpose was for testing.
   */
  api.setApiKey("6cba0922-187d-4b38-84eb-10d292cbe0d5");

  Player player = Player();
  Leaderboard leaderboard = Leaderboard();

  {
    print(await player.getFriendsByUuid(HypixelAPI.TEST_UUID));
    print(await player.getFriendsByName("RapidTheNerd"));
    print(await leaderboard.getLeaderboards());
  }
}
