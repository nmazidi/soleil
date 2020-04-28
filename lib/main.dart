import 'dart:async';
import 'dart:collection';
import 'package:drizzle_app/src/timeSeries.dart';
import 'package:drizzle_app/src/weatherData_bloc.dart';
import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io' as io;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  io.HttpOverrides.global = null;
  final wdBloc = WeatherDataBloc();
  runApp(MyApp(bloc: wdBloc));
}

class MyApp extends StatelessWidget {
  final WeatherDataBloc bloc;

  MyApp({
    Key key,
    this.bloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drizzle',
      theme: ThemeData(
        brightness: Brightness.dark,
        accentColor: Color(0xFF1EB980),
      ),
      home: SplashScreen(bloc: bloc),
    );
  }
}

class SplashScreen extends StatefulWidget {
  final WeatherDataBloc bloc;
  SplashScreen({Key key, this.bloc}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future checkCoordsSet() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _defaultCoordsSet = (prefs.getBool('default_coords_set') ?? false);
    if (_defaultCoordsSet) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => Home(title: 'Drizzle', bloc: widget.bloc)));
    } else {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => FirstTimeIntro(bloc: widget.bloc)));
    }
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 200), () {
      checkCoordsSet();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(Icons.cloud),
      ),
    );
  }
}

class FirstTimeIntro extends StatefulWidget {
  final WeatherDataBloc bloc;
  FirstTimeIntro({Key key, this.bloc}) : super(key: key);
  @override
  _FirstTimeIntroState createState() => _FirstTimeIntroState();
}

class _FirstTimeIntroState extends State<FirstTimeIntro> {
  TextEditingController _controller;

  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(), labelText: 'Search for a location'),
          controller: _controller,
          onSubmitted: (String query) async {
            try {
              final addresses =
                  await Geocoder.local.findAddressesFromQuery(query);
              final coordinates = addresses.first.coordinates;
              final perfs = await SharedPreferences.getInstance();
              perfs.setDouble('default_lat', coordinates.latitude);
              perfs.setDouble('default_long', coordinates.longitude);
              perfs.setBool('default_coords_set', true);
              widget.bloc.coordinates
                  .add([coordinates.latitude, coordinates.longitude]);
              Navigator.of(context).pushReplacement(new MaterialPageRoute(
                  builder: (context) => new Home(
                        bloc: widget.bloc,
                        title: addresses.first.featureName,
                      )));
            } catch (e) {
              await showDialog<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Error'),
                      content: Text('Please try again.'),
                      actions: <Widget>[
                        FlatButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    );
                  });
            }
          },
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  final WeatherDataBloc bloc;
  final String title;

  Home({
    Key key,
    this.title,
    this.bloc,
  }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: Icon(Icons.cloud),
      ),
      body: StreamBuilder<List<TimeSeries>>(
        stream: widget.bloc.timeSeriesList,
        initialData: UnmodifiableListView<TimeSeries>([]),
        builder: (context, snapshot) =>
            ListView(children: snapshot.data.map(_buildItem).toList()),
      ),
      bottomNavigationBar: BottomAppBar(
        child: IconButton(
          icon: Icon(Icons.update),
          onPressed: () async {
            final perfs = await SharedPreferences.getInstance();
            perfs.clear();
          },
        ),
      ),
    );
  }

  Widget _buildItem(TimeSeries timeSeries) {
    return Padding(
      key: Key(timeSeries.time),
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 12.0),
      child: ExpansionTile(
        title: Text(timeSeries.time ?? '[null]'),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Temperature: ${timeSeries.screenTemperature} °C'),
                Text('Feels like: ${timeSeries.feelsLikeTemperature} °C'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
