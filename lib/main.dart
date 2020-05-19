import 'dart:collection';
import 'package:flutter_map/plugin_api.dart';
import 'package:soleil_app/appBar.dart';
import 'package:soleil_app/splash.dart';
import 'package:soleil_app/src/data/hourlyTimeSeries.dart';
import 'package:soleil_app/src/data/dailyTimeSeries.dart';
import 'package:soleil_app/src/weatherData_bloc.dart';
import 'package:soleil_app/widgets.dart';
import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:latlong/latlong.dart';

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
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    var overlayImages = <OverlayImage>[
      OverlayImage(
          bounds: LatLngBounds(LatLng(61, -12), LatLng(48, 5)),
          opacity: 0.8,
          imageProvider: NetworkImage(
              'http://datapoint.metoffice.gov.uk/public/data/layer/wxfcs/Total_Cloud_Cover_Precip_Rate_Overlaid/png?RUN=2020-05-18T09:00:00Z&FORECAST=0&key=b1592b6c-c2ee-4a88-8938-736d95460172')),
    ];
    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        slivers: <Widget>[
          SoleilAppBar(scrollController: scrollController, bloc: widget.bloc),
          StreamBuilder<UnmodifiableListView<DailyTimeSeries>>(
            stream: widget.bloc.dailyTimeSeriesList,
            builder: (context, dailySnapshot) {
              return StreamBuilder<UnmodifiableListView<HourlyTimeSeries>>(
                stream: widget.bloc.hourlyTimeSeriesList,
                builder: (context, hourlySnapshot) {
                  return SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        if (hourlySnapshot.data.isNotEmpty)
                          widget.bloc.isLoadingSink.add(false);
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
                      childCount:
                          (dailySnapshot.hasData && hourlySnapshot.hasData)
                              ? dailySnapshot.data.length - 1
                              : 0,
                    ),
                  );
                },
              );
            },
          ),
          SliverToBoxAdapter(
            child: StreamBuilder<bool>(
              stream: widget.bloc.isLoading,
              builder: (context, snapshot) {
                return (snapshot.data)
                    ? Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Center(child: CircularProgressIndicator()),
                      )
                    : Container();
              },
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                child: Column(
                  children: <Widget>[
                    Flexible(
                      child: FlutterMap(
                        options: MapOptions(
                          center: LatLng(51.45523, -2.59665),
                          zoom: 6.0,
                        ),
                        layers: [
                          TileLayerOptions(
                              urlTemplate:
                                  'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                              subdomains: ['a', 'b', 'c']),
                          OverlayImageLayerOptions(overlayImages: overlayImages)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
