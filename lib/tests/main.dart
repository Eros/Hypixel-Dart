
import '../HypixelAPI.dart';
import '../player/Leaderboard.dart';
import '../player/Player.dart';
import '../utils/ConverterUtils.dart';

void main() async {

  HypixelAPI api = HypixelAPI();

  //NOTE: any key in other commits are no longer working
  //my normal key is no longer within this code
  api.setApiKey("");

  Player player = Player();
  Leaderboard leaderboard = Leaderboard();

  {
    print(await player.getFriendsByUuid(HypixelAPI.TEST_UUID));
    print(await player.getFriendsByName("RapidTheNerd"));
    print(await leaderboard.getLeaderboards());
  }
}
