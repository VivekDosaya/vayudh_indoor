import 'package:flutter/material.dart';
import 'package:vayudh_indoor/constants.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.level, this.cardChild});
  final int level;
  final Widget cardChild;
  var col;

  @override
  Widget build(BuildContext context) {
    if (level < 10) {
      col = kLowLevelColor;
    } else if (level > 10 && level < 20) {
      col = kMediumLevelColor;
    } else {
      col = kHighLevelColor;
    }
    return Container(
      child: cardChild,
      height: 150,
      width: 125,
      margin: EdgeInsets.all(15.0),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: col),
    );
  }
}
