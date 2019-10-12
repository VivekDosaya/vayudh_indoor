import 'package:flutter/material.dart';

class Faqs extends StatefulWidget {
  @override
  _FaqsState createState() => _FaqsState();
}

class _FaqsState extends State<Faqs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Faqs',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.brightness_1,
                color: Colors.orange,
              ),
              SizedBox(
                width: 5,
              ),
              Text('Lorem ipsum dolor sit amet, ')
            ],
          ),
          SizedBox(
            width: 15,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.brightness_1,
                color: Colors.orange,
              ),
              SizedBox(
                width: 5,
              ),
              Text('consectetur adipiscing elit, s')
            ],
          ),
          SizedBox(
            width: 15,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.brightness_1,
                color: Colors.orange,
              ),
              SizedBox(
                width: 5,
              ),
              Text('ed do eiusmod tempor incididunt ut l')
            ],
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.brightness_1,
                color: Colors.orange,
              ),
              SizedBox(
                width: 5,
              ),
              Text('abore et dolore magna aliqua. Ut')
            ],
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.brightness_1,
                color: Colors.orange,
              ),
              SizedBox(
                width: 5,
              ),
              Text('enim ad minim veniam, quis')
            ],
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.brightness_1,
                color: Colors.orange,
              ),
              SizedBox(
                width: 5,
              ),
              Text('nostrud exercitation ullamco')
            ],
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.brightness_1,
                color: Colors.orange,
              ),
              SizedBox(
                width: 5,
              ),
              Text('laboris nisi ut aliquip ex ea commodo ')
            ],
          )
        ],
      ),
    );
  }
}
