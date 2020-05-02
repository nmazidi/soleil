import 'package:drizzle_app/src/timeSeries.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DailyExpansionTile extends StatelessWidget {
  final List<TimeSeries> data;
  const DailyExpansionTile({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: data.first.time.day == DateTime.now().day
          ? Text('Today')
          : Text(DateFormat('EEEE').format(data.first.time) ?? '[null]'),
      children: [DailyExpandedData(data: data)],
    );
  }
}

class DailyExpandedData extends StatelessWidget {
  final List<TimeSeries> data;
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
