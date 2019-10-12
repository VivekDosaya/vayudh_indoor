import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';
import 'input_page.dart';
import 'loading_screen.dart';
import 'pie_chart.dart';
import 'loading_screen0.dart';
import 'list_view.dart';
import 'rounded_button.dart';
import 'faqs.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class ResultsPage extends StatefulWidget {
  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  var mq9 = [];
  var mq13 = [];
  var fanS;
  Color c;
  double overall_average = 0;
  int absolute = 0;
  double percent = 0.4;

  ReturnSensorData0 receivedSensordata = ReturnSensorData0();
  ReturnFanStatus fanStatus = ReturnFanStatus();
  _generateData0() {
    setState(() {
      var sd = receivedSensordata.returnSensordata0();
      fanS = fanStatus.retrunfanStatus();
      print("=======================");
      print(fanS);
      print("=======================");

      for (int i = 0; i < 15; i++) {
        mq9.add(sd[i]['iot']['mq9'][0]['value']);
        mq13.add(sd[i]['iot']['mq135'][0]['value']);
      }
      print(mq9);
      print(mq13);

      var average = [];

      print(average);
      for (int i = 0; i < mq9.length; i++) {
        print("-------------");
        print(average);
        print("-------------");

        average.add((mq9[i] + mq13[i]) / 2);
      }
      print(average);
      print(average.length);
      for (int i = 0; i < average.length; i++) {
        print(overall_average);
        print(average[i]);

        overall_average = overall_average + average[i];
      }
      print(overall_average);
      absolute = (overall_average / average.length).ceil();
      print(absolute);
      //percent = absolute * 0.02;
      //percent = 0.2;
      print(percent);
      if (absolute < 100) {
        c = Colors.yellow;
      } else if (absolute > 100 && absolute < 150) {
        c = Colors.orange;
      } else {
        c = Colors.red;
      }
    });

    //if(overall_average);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _generateData0();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "              Vayudh",
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          FlatButton(
            child: Text(
              'FAQ',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Faqs();
              }));
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Indoor Air quality Analysis',
                textAlign: TextAlign.center,
                style: kTitleTextStyle,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (fanS == false) {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PieChart();
                }));
              } else {
                Alert(
                  context: context,
                  type: AlertType.info,
                  title: "Alert!!",
                  desc:
                      "We have turned on your exhaust fan because of high levels of pollution",
                  buttons: [
                    DialogButton(
                      child: Text(
                        "COOL",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return PieChart();
                      })),
                      color: Color.fromRGBO(0, 179, 134, 1.0),
                      radius: BorderRadius.circular(0.0),
                    ),
                  ],
                ).show();
              }
            },
            child: CircularPercentIndicator(
              radius: 170.0,
              lineWidth: 13.0,
              animation: true,
              percent: 0.4,
              center: new Text(
                "Click Me",
                style: new TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 30.0, color: c),
              ),
              footer: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 120,
                      ),
                      Icon(
                        Icons.brightness_1,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Low Risk')
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 120,
                      ),
                      Icon(
                        Icons.brightness_1,
                        color: Colors.orange,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Slight Risk')
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 120,
                      ),
                      Icon(
                        Icons.brightness_1,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('High Risk')
                    ],
                  ),
                ],
              ),
//              new Text(
//                "Yellow: Low Risk   Orange: Slight Risk   Red: High Risk",
//                style: new TextStyle(
//                  fontWeight: FontWeight.bold,
//                  fontSize: 17.0,
//                ),
//                textAlign: TextAlign.center,
//              ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: c,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      '        $absolute',
                      style: TextStyle(
                          fontSize: 45.0,
                          fontWeight: FontWeight.w900,
                          color: c),
                    ),
                  ],
                ),
                SizedBox(
                  height: 48.0,
                ),
                RoundedButton(
                  title: 'Get Room Weather!',
                  colour: Colors.lightBlueAccent,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LoadingScreen();
                    }));
                  },
                ),
                RoundedButton(
                  title: 'Indepth Analysis!',
                  colour: Colors.blueAccent,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ListViewData();
                    }));
                  },
                ),
              ],
            ),
          ),
//          Expanded(
//            flex: 1,
//            child: GestureDetector(
//              onTap: () {
//                Navigator.push(context, MaterialPageRoute(builder: (context) {
//                  return LoadingScreen();
//                }));
//              },
//              child: ReusableCard(
//                level: 11,
//                cardChild: Column(
//                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                  crossAxisAlignment: CrossAxisAlignment.center,
//                  children: <Widget>[
//                    Text(
//                      'Get Weather of your room',
//                      style: kResultTextStyle,
//                      textAlign: TextAlign.center,
//                    ),
//                  ],
//                ),
//              ),
//            ),
//          ),
//          BottomButton(
//              buttonTitle: "Get Indepth Analysis",
//              onTap: () {
//                Navigator.push(context, MaterialPageRoute(builder: (context) {
//                  return ListViewData();
//                }));
//              }),
        ],
      ),
    );
  }
}
