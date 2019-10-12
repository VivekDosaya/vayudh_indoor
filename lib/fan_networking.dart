import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Fan {
  Future getFanData() async {
    http.Response response =
        await http.get('http://34.93.147.175:8080/getlatestvalue');
    print("here is the response body:");
    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      print("////////////////////");
      print(decodedData['fanStatus']);
      print("////////////////////");

      return decodedData;
    } else {
      print(response.statusCode);
    }
    print(response.body);
  }
}
