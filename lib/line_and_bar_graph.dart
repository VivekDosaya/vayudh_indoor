import 'package:flutter/material.dart';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'loading_screen.dart';

class HomePage extends StatefulWidget {
  final Widget child;

  HomePage({Key key, this.child}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var mq9 = [];
  var mq13 = [];

  ReturnSensorData receivedSensordata = ReturnSensorData();

  List<charts.Series<Pollution, String>> _seriesData;
  List<charts.Series<Sales, int>> _seriesLineData;

  _generateData() {
    var sd = receivedSensordata.returnSensordata();
    for (int i = 0; i < 15; i++) {
      mq9.add(sd[i]['iot']['mq9'][0]['value']);
      mq13.add(sd[i]['iot']['mq135'][0]['value']);
    }

    var linesalesdata = [
      new Sales(0, mq9[0]),
      new Sales(1, mq9[1]),
      new Sales(2, mq9[2]),
      new Sales(3, mq9[3]),
      new Sales(4, mq9[4]),
      new Sales(5, mq9[5]),
      new Sales(5, mq9[6]),
      new Sales(5, mq9[7]),
      new Sales(5, mq9[8]),
      new Sales(5, mq9[9]),
    ];
    var linesalesdata1 = [
      new Sales(0, mq13[0]),
      new Sales(1, mq13[1]),
      new Sales(2, mq13[2]),
      new Sales(3, mq13[3]),
      new Sales(4, mq13[4]),
      new Sales(5, mq13[5]),
      new Sales(5, mq13[6]),
      new Sales(5, mq13[7]),
      new Sales(5, mq13[8]),
      new Sales(5, mq13[9]),
    ];

    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff990099)),
        id: 'CO',
        data: linesalesdata,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff109618)),
        id: 'VOC',
        data: linesalesdata1,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _seriesData = List<charts.Series<Pollution, String>>();
    _seriesLineData = List<charts.Series<Sales, int>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff1976d2),
            //backgroundColor: Color(0xff308e1c),
            bottom: TabBar(
              indicatorColor: Color(0xff9962D0),
              tabs: [
                Tab(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(FontAwesomeIcons.chartLine),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'Time Series Analysis',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
              ],
            ),
            title: Text('                        Vayudh'),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 120,
                            ),
                            Icon(
                              Icons.brightness_1,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('CO '),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.brightness_1,
                              color: Colors.purple,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('VOC'),
                          ],
                        ),
//                        Text(
//                          'CO  and  VOC',
//                          style: TextStyle(
//                              fontSize: 24.0, fontWeight: FontWeight.bold),
//                        ),
                        Expanded(
                          child: charts.LineChart(_seriesLineData,
                              defaultRenderer: new charts.LineRendererConfig(
                                  includeArea: true, stacked: true),
                              animate: true,
                              animationDuration: Duration(seconds: 1),
                              behaviors: [
                                new charts.ChartTitle('Seconds',
                                    behaviorPosition:
                                        charts.BehaviorPosition.bottom,
                                    titleOutsideJustification: charts
                                        .OutsideJustification.middleDrawArea),
                                new charts.ChartTitle('Parts per Million',
                                    behaviorPosition:
                                        charts.BehaviorPosition.start,
                                    titleOutsideJustification: charts
                                        .OutsideJustification.middleDrawArea),
                              ]),
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.brightness_1,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'CO>180 hence  harmful ',
                              style: TextStyle(fontSize: 10),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.brightness_1,
                              color: Colors.purple,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'VOC<180 hence not harmful',
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Pollution {
  String place;
  int year;
  int quantity;

  Pollution(this.year, this.place, this.quantity);
}

class Task {
  String task;
  double taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);
}

class Sales {
  int yearval;
  int salesval;

  Sales(this.yearval, this.salesval);
}
