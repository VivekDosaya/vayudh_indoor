import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Messaging {
  Future getData() async {
    http.Response response = await http.get('http://localhost:3005/');
    print("here is the response body:");
    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      return decodedData;
    } else {
      print(response.statusCode);
    }
    print(response.body);
  }
}
