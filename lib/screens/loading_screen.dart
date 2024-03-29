import 'package:flutter/material.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'location_screen.dart';
import 'package:clima/services/weather.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude;
  double longitude;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocationData();
    print('this line of code is triggered');
  }

  void getLocationData() async {
    var weatherData = await WeatherModel().getLocationWeather();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(
        locationWeather: weatherData,
      );
    }));
  }

/*  void somethingThatExpectsLessThan10(int n) {
    if (n > 10) {
      throw 'n is greater than 10, n should always be less than 10';
    }
  }*/

  @override
  Widget build(BuildContext context) {
    String myMargin = 'abc';
    double myMarginAsaDouble;
    try {
      myMarginAsaDouble = double.parse(myMargin);
    } catch (e) {
      print(e);
    }
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}
