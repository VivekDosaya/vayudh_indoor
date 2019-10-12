import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';

class Averages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'All the averages!',
          style: kNumberTextStyle,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: ReusableCard(
              level: 12,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Weekly Average!',
                    style: kNumberTextStyle,
                  ),
                  Text(
                    '32 ppm',
                    style: kLabelTextStyle,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              level: 56,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Monthly Average!',
                    style: kNumberTextStyle,
                  ),
                  Text(
                    '32 ppm',
                    style: kLabelTextStyle,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              level: 8,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Yearly Average!',
                    style: kNumberTextStyle,
                  ),
                  Text(
                    '32 ppm',
                    style: kLabelTextStyle,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
