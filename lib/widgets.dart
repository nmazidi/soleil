import 'package:soleil_app/src/data/hourlyTimeSeries.dart';
import 'package:soleil_app/src/data/dailyTimeSeries.dart';
import 'package:soleil_app/src/weatherCode.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_icons/weather_icons.dart';

class DailyExpansionTile extends StatelessWidget {
  final DailyTimeSeries dailyData;
  final List<HourlyTimeSeries> hourlyData;
  const DailyExpansionTile({Key key, this.dailyData, this.hourlyData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
      dense: true,
      child: ExpansionTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 50.0,
              padding: const EdgeInsets.only(bottom: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                dailyData.time.day == DateTime.now().day
                    ? Icon(WeatherIcons.fromString(
                        weatherCode(hourlyData.first.significantWeatherCode),
                        fallback: Icons.not_listed_location))
                    : Icon(WeatherIcons.fromString(
                        weatherCode(dailyData.daySignificantWeatherCode),
                        fallback: Icons.not_listed_location)),
              ]),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  dailyData.time.day == DateTime.now().day
                      ? Text('Today', style: TextStyle(fontSize: 15))
                      : Text(
                          DateFormat('EEEE')
                              .format(dailyData.time),
                          style: TextStyle(fontSize: 15)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        WeatherIcons.raindrop,
                        color: Colors.lightBlue,
                        size: 14,
                      ),
                      Text(
                        '${dailyData.dayProbabilityOfRain.round().toString()}%',
                        style: TextStyle(color: Colors.lightBlue, fontSize: 15),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        children: [DailyExpandedData(data: hourlyData)],
      ),
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
