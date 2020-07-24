
import 'impl/DataType.dart';

class HypixelAPI {

  static String API_KEY = "";
  static String BASE = "https://api.hypixel.net/";

  HypixelAPI();

  String get getApiKey { return API_KEY; }
  String get getBase { return BASE; }

  void setApiKey(String key) {
    API_KEY = key;
  }

  //todo change this to return the actual information
  //needed
  void getData(DataType type) {

    switch(type) {

      case DataType.FriendsList:
        // TODO: Handle this case.
        break;
      case DataType.Skyblock:
        // TODO: Handle this case.
        break;
      case DataType.SkyblockAuction:
        // TODO: Handle this case.
        break;
      case DataType.SkyblockBazaar:
        // TODO: Handle this case.
        break;
      case DataType.SkyblockAuctions:
        // TODO: Handle this case.
        break;
      case DataType.SkyblockProfile:
        // TODO: Handle this case.
        break;
      case DataType.SkyblockProfileWithID:
        // TODO: Handle this case.
        break;
      case DataType.Session:
        // TODO: Handle this case.
        break;
      case DataType.RecentGames:
        // TODO: Handle this case.
        break;
      case DataType.GuildByID:
        // TODO: Handle this case.
        break;
      case DataType.GuildByPlayerName:
        // TODO: Handle this case.
        break;
      case DataType.GuildByGuildName:
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
    }
  }

}