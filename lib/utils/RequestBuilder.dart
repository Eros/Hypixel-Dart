import 'package:http/http.dart' as http;
import 'dart:async';

class RequestBuilder {
  var url;
  RequestBuilder(this.url);

  Future<String> get() async {
    var response = await http.get(this.url);
    return response.body;
  }
}