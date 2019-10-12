import 'package:vayudh_indoor/messaging_module.dart';
import 'package:vayudh_indoor/results_page.dart';
import 'fan_networking.dart';

import 'location_screen.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'weather.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'scratch.dart';

dynamic sensorData;
dynamic notificationData;
dynamic fanStatus;
dynamic f;

class LoadingScreenZ extends StatefulWidget {
  @override
  _LoadingScreenZState createState() => _LoadingScreenZState();
}

class _LoadingScreenZState extends State<LoadingScreenZ> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getSensorData();
    getFan();

    //sendNotification();
  }

  void getFan() async {
    fanStatus = await Fan().getFanData();
    print('!!!!!!!!!!!!!!!');
    print(fanStatus);
    f = fanStatus['fanStatus'];
    print(f);

    print('!!!!!!!!!!!!!!!');
  }

  void getSensorData() async {
    sensorData = await NetworkHelper().getSensorData();
    print("-------------------------");
    Iterable inReverse = sensorData.reversed;
    sensorData = inReverse.toList();
    print('final sensor data');

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ResultsPage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.grey,
          size: 100.0,
        ),
      ),
    );
  }
}

class ReturnSensorData0 {
  returnSensordata0() {
    return sensorData;
  }
}

class ReturnFanStatus {
  retrunfanStatus() {
    print("~~~~~~~~~~~~~~~~~~~~~");
    print(f);
    print("~~~~~~~~~~~~~~~~~~~~~");

    return f;
  }
}
