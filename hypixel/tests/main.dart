
import '../HypixelAPI.dart';
import '../player/Leaderboard.dart';
import '../player/Player.dart';
import '../utils/ConverterUtils.dart';

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
  }
}
