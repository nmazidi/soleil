import 'package:flutter/material.dart';
import 'package:soleil_app/src/data/hourlyTimeSeries.dart';
import 'package:soleil_app/src/weatherData_bloc.dart';

const double kExtendedHeight = 300;

class SoleilAppBar extends StatelessWidget {
  final ScrollController scrollController;
  final WeatherDataBloc bloc;

  const SoleilAppBar(
      {Key key, @required this.scrollController, @required this.bloc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: AppBarHeader(
        scrollController: scrollController,
        zeroOpacityOffset: kExtendedHeight - kToolbarHeight - 20,
        fullOpacityOffset: kExtendedHeight - kToolbarHeight,
      ),
      primary: true,
      pinned: true,
      expandedHeight: kExtendedHeight,
      flexibleSpace: AppBarContent(bloc: this.bloc),
    );
  }
}

class AppBarHeader extends StatefulWidget {
  final ScrollController scrollController;
  final double zeroOpacityOffset;
  final double fullOpacityOffset;

  const AppBarHeader({
    Key key,
    @required this.scrollController,
    this.zeroOpacityOffset = 0,
    this.fullOpacityOffset = 0,
  });

  @override
  _AppBarHeaderState createState() => _AppBarHeaderState();
}

class _AppBarHeaderState extends State<AppBarHeader> {
  double _offset;

  @override
  initState() {
    super.initState();
    _offset = widget.scrollController.offset;
    widget.scrollController.addListener(_setOffset);
  }

  @override
  void dispose() {
    _removeListener();
    super.dispose();
  }

  void _setOffset() {
    setState(() {
      _offset = widget.scrollController.offset;
    });
  }

  void _removeListener() {
    widget.scrollController.removeListener(_setOffset);
  }

  double _calculateOpacity() {
    if (widget.fullOpacityOffset == widget.zeroOpacityOffset)
      return 1;
    else if (widget.fullOpacityOffset > widget.zeroOpacityOffset) {
      // fading in
      if (_offset <= widget.zeroOpacityOffset)
        return 0;
      else if (_offset >= widget.fullOpacityOffset)
        return 1;
      else
        return ((_offset - widget.zeroOpacityOffset) /
            (widget.fullOpacityOffset - widget.zeroOpacityOffset));
    } else {
      // fading out
      if (_offset <= widget.fullOpacityOffset)
        return 1;
      else if (_offset >= widget.zeroOpacityOffset)
        return 0;
      else
        return (_offset - widget.fullOpacityOffset) /
            (widget.zeroOpacityOffset - widget.fullOpacityOffset);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: _calculateOpacity(),
      child: AppBarHeaderContent(),
    );
  }
}

class AppBarHeaderContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Icon(
              Icons.menu,
              color: Colors.white,
              size: 22,
            ),
          ),
          Container(
            child: Text('Bristol, UK', style: TextStyle(fontSize: 16)),
          ),
          Container(
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 22,
            ),
          ),
        ],
      ),
    );
  }
}

class AppBarContent extends StatelessWidget {
  final WeatherDataBloc bloc;

  const AppBarContent({Key key, this.bloc}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<HourlyTimeSeries>(
        stream: bloc.currentTimeSeries,
        builder: (context, snapshot) {
          if (!snapshot.hasData) return (FlexibleSpaceBar());
          return FlexibleSpaceBar(
            background: Container(
              padding: EdgeInsets.only(top: kToolbarHeight),
              height: kExtendedHeight,
              child: Container(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  '${snapshot.data.screenTemperature.round().toString()}°',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          );
        });
  }
}
