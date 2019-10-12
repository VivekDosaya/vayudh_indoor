import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'line_and_bar_graph.dart';

import 'constants.dart';
import 'results_page.dart';
import 'bottom_button.dart';
import 'averages.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = kActiveCardColour;
  Color femaleCardColour = kActiveCardColour;
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pollution Levels'),
        ),
        backgroundColor: Color(0xFF256C34),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print(" button1 pressed!");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }));
//                      setState(() {
//                        selectedGender = Gender.male;
//                      });
                    },
                    child: ReusableCard(
                        level: 23,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Butanal',
                              style: kNumberTextStyle,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '22 ppm',
                              style: kLabelTextStyle,
                            )
                          ],
                        )),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print(" button2 pressed!");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }));
//                      setState(() {
//                        selectedGender = Gender.male;
//                      });
                    },
                    child: ReusableCard(
                        level: 13,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Ethanol',
                              style: kNumberTextStyle,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '22 ppm',
                              style: kLabelTextStyle,
                            )
                          ],
                        )),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print(" button1 pressed!");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }));
//                      setState(() {
//                        selectedGender = Gender.male;
//                      });
                    },
                    child: ReusableCard(
                        level: 5,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Acetone',
                              style: kNumberTextStyle,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '22 ppm',
                              style: kLabelTextStyle,
                            )
                          ],
                        )),
                  ),
                ),
              ],
            )),
            Expanded(
              child: ReusableCard(
                level: 7,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'WEATHER CONDITIONS',
                      style: kNumberTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          '23.5 C',
                          style: kLabelTextStyle,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          'Humidity:',
                          style: kLabelTextStyle,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          '81%',
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print(" button4 pressed!");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }));
//                      setState(() {
//                        selectedGender = Gender.male;
//                      });
                    },
                    child: ReusableCard(
                        level: 34,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'CS2',
                              style: kNumberTextStyle,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '22 ppm',
                              style: kLabelTextStyle,
                            )
                          ],
                        )),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print(" button2 pressed!");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }));
//                      setState(() {
//                        selectedGender = Gender.male;
//                      });
                    },
                    child: ReusableCard(
                        level: 12,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'CO2',
                              style: kNumberTextStyle,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '22 ppm',
                              style: kLabelTextStyle,
                            )
                          ],
                        )),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print(" button 6 pressed");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }));
//                      setState(() {
//                        selectedGender = Gender.male;
//                      });
                    },
                    child: ReusableCard(
                        level: 32,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'O2',
                              style: kNumberTextStyle,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '22 ppm',
                              style: kLabelTextStyle,
                            )
                          ],
                        )),
                  ),
                ),
              ],
            )),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: GestureDetector(
                    onTap: () {
                      print(" button7 pressed!");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }));
//                      setState(() {
//                        selectedGender = Gender.male;
//                      });
                    },
                    child: ReusableCard(
                        level: 17,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Formaldehyde',
                              style: kNumberTextStyle,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '22 ppm',
                              style: kLabelTextStyle,
                            )
                          ],
                        )),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print(" button8 pressed!");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }));
//                      setState(() {
//                        selectedGender = Gender.male;
//                      });
                    },
                    child: ReusableCard(
                        level: 24,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Alcohol',
                              style: kNumberTextStyle,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '22 ppm',
                              style: kLabelTextStyle,
                            )
                          ],
                        )),
                  ),
                ),
              ],
            )),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print(" button1 pressed!");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }));
//                      setState(() {
//                        selectedGender = Gender.male;
//                      });
                    },
                    child: ReusableCard(
                        level: 3,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Butanal',
                              style: kNumberTextStyle,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '22 ppm',
                              style: kLabelTextStyle,
                            )
                          ],
                        )),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print(" button2 pressed!");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }));
//                      setState(() {
//                        selectedGender = Gender.male;
//                      });
                    },
                    child: ReusableCard(
                        level: 67,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Ethanol',
                              style: kNumberTextStyle,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '22 ppm',
                              style: kLabelTextStyle,
                            )
                          ],
                        )),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print(" button1 pressed!");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }));
//                      setState(() {
//                        selectedGender = Gender.male;
//                      });
                    },
                    child: ReusableCard(
                        level: 13,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Acetone',
                              style: kNumberTextStyle,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '22 ppm',
                              style: kLabelTextStyle,
                            )
                          ],
                        )),
                  ),
                ),
              ],
            )),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print(" button4 pressed!");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }));
//                      setState(() {
//                        selectedGender = Gender.male;
//                      });
                    },
                    child: ReusableCard(
                        level: 34,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'CS2',
                              style: kNumberTextStyle,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '22 ppm',
                              style: kLabelTextStyle,
                            )
                          ],
                        )),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print(" button2 pressed!");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }));
//                      setState(() {
//                        selectedGender = Gender.male;
//                      });
                    },
                    child: ReusableCard(
                        level: 12,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'CO2',
                              style: kNumberTextStyle,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '22 ppm',
                              style: kLabelTextStyle,
                            )
                          ],
                        )),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print(" button 6 pressed");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }));
//                      setState(() {
//                        selectedGender = Gender.male;
//                      });
                    },
                    child: ReusableCard(
                        level: 32,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'O2',
                              style: kNumberTextStyle,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '22 ppm',
                              style: kLabelTextStyle,
                            )
                          ],
                        )),
                  ),
                ),
              ],
            )),
//            BottomButton(
//              buttonTitle: "Get Insights",
//              onTap: () {
////                CalculatorBrain calc =
////                    CalculatorBrain(height: height, weight: weight);
////                Navigator.push(context, MaterialPageRoute(builder: (context) {
////                  print(calc.calculateBMI());
////                  print(calc.getInterpretation());
////                  print(calc.getResult());
////                  return ResultsPage(
////                    bmiResults: calc.calculateBMI(),
////                    interpretation: calc.getInterpretation(),
////                    resultText: calc.getResult(),
////                  );
////                }));
//              },
//            )
          ],
        ));
  }
}
