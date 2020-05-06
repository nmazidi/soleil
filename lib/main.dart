import 'dart:collection';
import 'package:soleil_app/splash.dart';
import 'package:soleil_app/src/data/hourlyTimeSeries.dart';
import 'package:soleil_app/src/data/dailyTimeSeries.dart';
import 'package:soleil_app/src/weatherData_bloc.dart';
import 'package:soleil_app/widgets.dart';
import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';

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
        title: Text(
            '${widget.location.subAdminArea}, ${widget.location.countryCode}'),
        leading: Icon(Icons.cloud),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            child: Card(
              elevation: 5,
              child: StreamBuilder<List<DailyTimeSeries>>(
                stream: widget.bloc.dailyTimeSeriesList,
                initialData: UnmodifiableListView<DailyTimeSeries>([]),
                builder: (context, dailySnapshot) {
                  if (dailySnapshot.data.isEmpty)
                    return Center(child: CircularProgressIndicator());
                  return StreamBuilder<List<HourlyTimeSeries>>(
                      stream: widget.bloc.hourlyTimeSeriesList,
                      initialData: UnmodifiableListView<HourlyTimeSeries>([]),
                      builder: (context, hourlySnapshot) {
                        if (hourlySnapshot.data.isEmpty)
                          return Center(child: CircularProgressIndicator());
                        return ListView.builder(
                          itemCount: (dailySnapshot.data.last.time.day -
                                  DateTime.now().day) +
                              1,
                          itemBuilder: (context, int index) {
                            return DailyExpansionTile(
                              dailyData: dailySnapshot.data
                                  .where((ts) =>
                                      ts.time.day == DateTime.now().day + index).first,
                              hourlyData: hourlySnapshot.data
                                  .where((ts) =>
                                      ts.time.day == DateTime.now().day + index)
                                  .toList(),
                            );
                          },
                          shrinkWrap: true,
                        );
                      });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
