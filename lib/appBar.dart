import 'package:flutter/material.dart';

class SoleilAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: AppBarHeader(),
      primary: true,
      pinned: true,
      expandedHeight: 300,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(),
      ),
    );
  }
}

class AppBarHeader extends StatefulWidget {
  const AppBarHeader({
    Key key,
  }) : super(key: key);
  @override
  _AppBarHeaderState createState() {
    return new _AppBarHeaderState();
  }
}

class _AppBarHeaderState extends State<AppBarHeader> {
  ScrollPosition _position;
  bool _visible;
  @override
  void dispose() {
    _removeListener();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _removeListener();
    _addListener();
  }

  void _addListener() {
    _position = Scrollable.of(context)?.position;
    _position?.addListener(_positionListener);
    _positionListener();
  }

  void _removeListener() {
    _position?.removeListener(_positionListener);
  }

  void _positionListener() {
    final FlexibleSpaceBarSettings settings =
        context.dependOnInheritedWidgetOfExactType();
    bool visible =
        settings == null || settings.currentExtent <= settings.minExtent;
    if (_visible != visible) {
      setState(() {
        _visible = visible;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _visible,
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
