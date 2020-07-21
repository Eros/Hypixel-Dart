
import '../HypixelAPI.dart';
import '../player/Friends.dart';
import '../player/Player.dart';


void main() {

  HypixelAPI api = HypixelAPI();

  Player player = Player();
  Friends friends = Friends();

  String testPlayerGeneral = player.getPlayerData("43db704e10b140b3a38dce059de35a59");
  String testFriendsGeneral = friends.getPlayerFriends("43db704e10b140b3a38dce059de35a59");

  api.setApiKey("REPLACE WITH YOUR API KEY");

  print(testPlayerGeneral);
  print(testFriendsGeneral);

}
