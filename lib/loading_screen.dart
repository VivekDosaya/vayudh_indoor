import 'location_screen.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'weather.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'scratch.dart';

dynamic sensorData;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude;
  double longitiude;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocationData();
    getSensorData();
  }

  void getLocationData() async {
    var weatherData = await WeatherModel().getLocationWeather();
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(
        locationWeather: weatherData,
      );
    }));
  }

  void getSensorData() async {
    sensorData = await NetworkHelper().getSensorData();
    print("-------------------------");
    Iterable inReverse = sensorData.reversed;
    sensorData = inReverse.toList();
    print('final sensor data');
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

class ReturnSensorData {
  returnSensordata() {
    return sensorData;
  }
}
