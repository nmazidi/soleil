import 'package:soleil_app/src/hourlyTimeSeries.dart';
import 'package:soleil_app/src/weatherCode.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_icons/weather_icons.dart';

class DailyExpansionTile extends StatelessWidget {
  final List<HourlyTimeSeries> data;
  const DailyExpansionTile({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 70.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                data.first.time.day == DateTime.now().day
                    ? Text('TODAY')
                    : Text(DateFormat('EEE')
                        .format(data.first.time)
                        .toUpperCase()),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      WeatherIcons.raindrop,
                      color: Colors.lightBlue,
                      size: 15.0,
                    ),
                    Text(
                      '${data.first.probOfPrecipitation.toString()}%',
                      style: TextStyle(color: Colors.lightBlue),
                      textAlign: TextAlign.left,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 50.0,
            child: Icon(
              WeatherIcons.fromString(
                  weatherCode(data.first.significantWeatherCode), fallback: WeatherIcons.day_sunny),
            ),
          )
        ],
      ),
      children: [DailyExpandedData(data: data)],
    );
  }
}

class DailyExpandedData extends StatelessWidget {
  final List<HourlyTimeSeries> data;
  const DailyExpandedData({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: (data
                  .where((ts) => (ts.time.hour % 2 == 0))
                  .map(
                      (ts) => Text(DateFormat('Hm').format(ts.time).toString()))
                  .toList()),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: (data
                .where((ts) => (ts.time.hour % 2 == 0))
                .map((ts) =>
                    Text('${ts.feelsLikeTemperature.round().toString()}°C'))
                .toList()),
          ),
        ],
      ),
    );
  }
}
