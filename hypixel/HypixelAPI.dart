
import 'impl/DataType.dart';
import 'impl/GuildDataType.dart';
import 'impl/PlayerDataType.dart';
import 'impl/SkyblockDataType.dart';

class HypixelAPI {

  static String API_KEY = "";
  static const String BASE = "https://api.hypixel.net/";
  static const String TEST_UUID = "43db704e10b140b3a38dce059de35a59";

  HypixelAPI();

  String get getApiKey { return API_KEY; }
  String get getBase { return BASE; }

  void setApiKey(String key) {
    API_KEY = key;
  }

  //todo change this to return the actual information
  //needed
  void getData(DataType type, [String name, String uuid, PlayerDataType playerData,
      GuildDataType guildData, SkyblockDataType skyblockData]) {

    switch(type) {

      case DataType.Session:
        // TODO: Handle this case.
        break;
      case DataType.RecentGames:
        // TODO: Handle this case.
        break;
      case DataType.Boosters:
        // TODO: Handle this case.
        break;
      case DataType.KeyInformation:
        // TODO: Handle this case.
        break;
      case DataType.GameCounts:
        // TODO: Handle this case.
        break;
      case DataType.PlayerCounts:
        // TODO: Handle this case.
        break;
      case DataType.WatchDog:
        // TODO: Handle this case.
        break;
      case DataType.Player:
        // TODO: Handle this case.
        break;
      case DataType.Leaderboards:
        // TODO: Handle this case.
        break;
      case DataType.Guild:
        // TODO: Handle this case.
        break;
      case DataType.Skyblock:
        // TODO: Handle this case.
        break;
    }
  }

}