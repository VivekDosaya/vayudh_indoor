import 'package:flutter/material.dart';
import 'constants.dart';
import 'weather.dart';

class LocationScreen extends StatefulWidget {
  LocationScreen({this.locationWeather});
  final locationWeather;

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  WeatherModel weather = WeatherModel();

  int temperature;
  int humidity;
  int pressure;
//  double temp_max;
//  double temp_min;
  String weatherIcon;
  String cityName;
  String weatherMessage;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //print(widget.locationWeather);
    updateUI(widget.locationWeather);
  }

  void updateUI(dynamic weatherData) {
    print("******************");
    print(weatherData);
    print("******************");
    setState(() {
      if (weatherData == null) {
        print("******************");
        print(weatherData);
        print("******************");
        temperature = 0;
        weatherIcon = 'Error';
        weatherMessage = 'Unable to fetch location!';
        humidity = 0;
        cityName = '';
        return;
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vayudh Weather Analysis'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/location_background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      ' Pressure : 1010 ',
                      style: kTempTextStyle,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      ' Temperature : 30 C',
                      style: kTempTextStyle,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      ' Humidity : 73%',
                      style: kTempTextStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
