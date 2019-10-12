import 'location.dart';
import 'networking.dart';

const API_KEY = "85ce531835e8b556d9a731adc891c288";
const openWeatherMapURL = "https://api.openweathermap.org/data/2.5/weather";
const latitude = "12.9380";
const longitude = "80.2097";

class WeatherModel {
//  Future<dynamic> getCityWeather(String cityName) async {
//    print("getCityWeather function called");
//    var url = '$openWeatherMapURL?q=$cityName&appid=$API_KEY&units=metric';
//    NetworkHelper networkHelper = new NetworkHelper(url: url);
//    var weatherData = await networkHelper.getData();
//    return weatherData;
//  }

  Future<dynamic> getLocationWeather() async {
    print("getLocation function called");
//    Location location = new Location();
//    await location.getCurrentLocation();
//    print(location.latitude);
//    print(location.longitude);

    NetworkHelper networkHelper = new NetworkHelper(
        url:
            '$openWeatherMapURL?lat=$latitude&lon=$longitude&appid=$API_KEY&units=metric');
    var weatherData = await networkHelper.getData();
    print(weatherData);
    return weatherData;
  }
}
