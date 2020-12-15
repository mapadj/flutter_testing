import 'dart:convert';

import 'package:http/http.dart' as http;

class MyGet {
  dynamic data;
  MyGet.fromJson(this.data);
}

const String urlMyGetFunction = 'https://mydomain.de/api/myGetFunction';

Future<MyGet> fetchGet(http.Client client) async {
  final response = await client.get(urlMyGetFunction);

  if (response.statusCode == 200) {
    return MyGet.fromJson(jsonDecode(response.body));
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load post');
  }
}
