import 'dart:collection';
import 'package:drizzle_app/splash.dart';
import 'package:drizzle_app/src/timeSeries.dart';
import 'package:drizzle_app/src/weatherData_bloc.dart';
import 'package:drizzle_app/widgets.dart';
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
          builder: (context, snapshot) {
            if (snapshot.data.isEmpty) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.builder(
              itemCount: (snapshot.data.last.time.day - DateTime.now().day) + 1,
              itemBuilder: (context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 4.0, vertical: 12.0),
                  child: DailyExpansionTile(
                      data: snapshot.data
                          .where((ts) =>
                              (ts.time.day == DateTime.now().day + index))
                          .toList()),
                );
              },
            );
          }),
      bottomNavigationBar: BottomAppBar(
        child: IconButton(
          icon: Icon(Icons.clear),
          onPressed: () async {
            final perfs = await SharedPreferences.getInstance();
            perfs.clear();
          },
        ),
      ),
    );
  }
}
