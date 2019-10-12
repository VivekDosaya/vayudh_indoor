import 'package:flutter/material.dart';

class Suggestions extends StatefulWidget {
  @override
  _SuggestionsState createState() => _SuggestionsState();
}

class _SuggestionsState extends State<Suggestions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Suggestions',
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
              Text('Please open the windows!')
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
              Text('Plant a few saplings in your house')
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
              Text('Try buying an air purifier')
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
              Text('Avoid Smoking in your indoors')
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
              Text('Agarbattis should be put out')
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
              Text('Avoid wearing perfume until the level stabilizes')
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
              Text('Ensure better ventilation ')
            ],
          )
        ],
      ),
    );
  }
}
