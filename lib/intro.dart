import 'package:drizzle_app/main.dart';
import 'package:drizzle_app/src/weatherData_bloc.dart';
import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';

class FirstTimeIntro extends StatefulWidget {
  final WeatherDataBloc bloc;
  FirstTimeIntro({Key key, this.bloc}) : super(key: key);
  @override
  _FirstTimeIntroState createState() => _FirstTimeIntroState();
}

class _FirstTimeIntroState extends State<FirstTimeIntro> {
  TextEditingController _controller;

  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(), labelText: 'Search for a location'),
          controller: _controller,
          onSubmitted: (String query) async {
            try {
              // Find address from search query using Geocoder
              final addresses =
                  await Geocoder.local.findAddressesFromQuery(query);
              // The coordinates of the first result of search.
              final coordinates = addresses.first.coordinates;
              // Save the coordinates in shared preferences.
              widget.bloc.saveDefaultLocation(coordinates);
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) =>
                      Home(bloc: widget.bloc, location: addresses.first),
                ),
              );
            } catch (e) {
              await showDialog<void>(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Error'),
                    content: Text('Please try again.'),
                    actions: [
                      FlatButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('OK'),
                      ),
                    ],
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
