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
  // ScrollController _scrollController;
  // final targetElevation = 5;
  // double _elevation = 0;

  // @override
  // void initState() {
  //   super.initState();
  //   _scrollController = ScrollController();
  //   _scrollController.addListener(_scrollListener);
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _scrollController?.removeListener(_scrollListener);
  //   _scrollController?.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200,
          ),
          StreamBuilder<UnmodifiableListView<DailyTimeSeries>>(
            stream: widget.bloc.dailyTimeSeriesList,
            builder: (context, dailySnapshot) {
              return StreamBuilder<UnmodifiableListView<HourlyTimeSeries>>(
                stream: widget.bloc.hourlyTimeSeriesList,
                builder: (context, hourlySnapshot) {
                  // if (hourlySnapshot.data.isEmpty)
                  //   return Center(child: CircularProgressIndicator());
                  return SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return DailyExpansionTile(
                          dailyData: dailySnapshot.data
                              .where((ts) =>
                                  ts.time.day == DateTime.now().day + index)
                              .first,
                          hourlyData: hourlySnapshot.data
                              .where((ts) =>
                                  ts.time.day == DateTime.now().day + index)
                              .toList(),
                        );
                      },
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }

  // _scrollListener() {
  //   double newElevation = _scrollController.offset > 1 ? targetElevation : 0;
  //   if (_elevation != newElevation) {
  //     setState(() {
  //       _elevation = newElevation;
  //     });
  //   }
  // }
}
