import 'dart:async';
import 'dart:collection';
import 'package:drizzle_app/src/timeSeries.dart';
import 'package:drizzle_app/src/weatherData_bloc.dart';
import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  // Waits for widgets to initialise before getting any assets.
  WidgetsFlutterBinding.ensureInitialized();
  // Data bloc following the BLoC design pattern.
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
              // Find address from search query using Geocoder
              final addresses =
                  await Geocoder.local.findAddressesFromQuery(query);
              // The coordinates of the first result of search.
              final coordinates = addresses.first.coordinates;
              // Save the coordinates in shared preferences.
              widget.bloc.saveDefaultLocation(coordinates);
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) =>
                      Home(bloc: widget.bloc, location: addresses.first),
                ),
              );
            } catch (e) {
              await showDialog<void>(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Error'),
                    content: Text('Please try again.'),
                    actions: [
                      FlatButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('OK'),
                      ),
                    ],
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  final WeatherDataBloc bloc;
  final Address location;

  Home({Key key, this.bloc, this.location}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('${widget.location.featureName}, ${widget.location.locality}'),
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
      key: Key(timeSeries.time.toString()),
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
