import 'dart:collection';
import 'package:drizzle_app/src/timeSeries.dart';
import 'package:drizzle_app/src/weatherData_bloc.dart';
import 'package:flutter/material.dart';
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
      home: MyHomePage(
        title: 'Drizzle',
        bloc: bloc,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final WeatherDataBloc bloc;
  final String title;

  MyHomePage({Key key, this.title, this.bloc}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
            onPressed: () {
              List<double> testCoords = [51.454514, -2.587910];
              widget.bloc.saveDefaultLocation(testCoords);
            }),
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
