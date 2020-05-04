import 'dart:async';
import 'package:soleil_app/intro.dart';
import 'package:soleil_app/main.dart';
import 'package:soleil_app/src/weatherData_bloc.dart';
import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  final WeatherDataBloc bloc;
  SplashScreen({Key key, this.bloc}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future checkCoordsSet() async {
    // Get shared preferences from disk.
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // Checks whether coordinates have already been set from a previous session.
    bool _defaultCoordsSet = (prefs.getBool('default_coords_set') ?? false);
    if (_defaultCoordsSet) {
      // Get address from coords using Geocoder.
      final _location = await Geocoder.local.findAddressesFromCoordinates(
          Coordinates(
              prefs.getDouble('default_lat'), prefs.getDouble('default_long')));
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) =>
              Home(bloc: widget.bloc, location: _location.first),
        ),
      );
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => FirstTimeIntro(bloc: widget.bloc),
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 500), () {
      checkCoordsSet();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(Icons.cloud, size: 50),
      ),
    );
  }
}
