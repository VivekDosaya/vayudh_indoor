import 'package:flutter/material.dart';

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);
const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a Value',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Colors.black,
);
const kBottomContainerHeight = 80.0;
const kActiveCardColour = Color(0xFF1D1E33);
const kInactiveCardColour = Color(0xFF111328);
const kBottomContainerColour = Color(0xFFEB1555);

const kNumberTextStyle =
    TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500, color: Colors.black);
const kLargeButtonTextStyle =
    TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold);
const kTitleTextStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 35.0);
const kResultTextStyle =
    TextStyle(color: Colors.black, fontSize: 22.0, fontWeight: FontWeight.bold);
const kBMITextStyle = TextStyle(
    fontSize: 100.0, fontWeight: FontWeight.bold, color: Colors.black);
const kBodytextStyle = TextStyle(fontSize: 22.0);

const kTempTextStyle = TextStyle(
  //fontFamily: 'Spartan MB',
  color: Colors.white,
  fontSize: 35.0,
);

const kMessageTextStyle = TextStyle(
  //fontFamily: 'Spartan MB',

  color: Colors.white,

  fontSize: 60.0,
);

const kButtonTextStyle = TextStyle(
  //fontSize: 30.0,
  color: Colors.white,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);

const kHighLevelColor = Color(0xFFEA3F36);
const kMediumLevelColor = Colors.yellow;
const kLowLevelColor = Color(0xFF4FB948);

//
