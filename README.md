# Hypixel-Dart

Dart wrapper for the Hypixel API

# Usage

```dart

void main() {
  HypixelAPI api = HypixelAPI();
  api.setApiKey("API KEY HERE");
  
  Player player = Player();
  
  print(player.getFriendsByName("RapidTheNerd"));
}
```

#### Returns

```json
{"success":true,"records":[
{"_id":"52e41c160cf2a8a99eaca574","started":1390681110519,"uuidReceiver":"522e495748ee41d2a7df0596c0433c72","uuidSender":"43db704e10b140b3a38dce059de35a59"},
{"_id":"52f6a98184aecbbf904f1149","started":1391896961799,"uuidReceiver":"90a6cb8e1b334da091776b3915138db0","uuidSender":"43db704e10b140b3a38dce059de35a59"}
```