import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  //NetworkHelper({@required this.url});
  //final String url;
  Future getSensorData() async {
    http.Response response =
        await http.get('http://34.93.147.175:8080/getdata');
    print("here is the response body:");
    print(response.body);
    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      return decodedData;
      print(decodedData);
    } else {
      print(response.statusCode);
    }
    print(response.body);
  }
}
