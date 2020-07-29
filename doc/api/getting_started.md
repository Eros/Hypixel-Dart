# Installing

`pub get hypixel_dart`

# Usage

The library is asynchronous so any functions using the
library also need to be asynchronous. 

Basic usage:

```dart
void main() async {
  HypixelAPI api = HypixelAPI();
  api.setApiKey("API KEY HERE");
  
  Player player = Player();
  
  print(await player.getFriendsByName("RapidTheNerd"));
}
```
All information returns as JSON, from a Future

