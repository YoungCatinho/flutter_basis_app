import 'package:flutter/material.dart';
import 'package:flutter_basis_app/screens/beagle_screen.dart';
import 'package:flutter_basis_app/screens/havaneser_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Home"),
        actions: <Widget>[
          Icon(Icons.add_to_queue),
          Icon(Icons.airline_seat_legroom_reduced),
          Icon(Icons.access_alarm),
          Icon(Icons.cloud),
        ],
      ),

      body: Center(
        child: Column(
          children: <Widget>[
            HundeRasseButton(context, "Havaneser", HavaneserScreen()),
            HundeRasseButton(context, "Beagle", BeagleScreen())
          ],
        ),
      ),
    );
  }

  Widget HundeRasseButton(BuildContext context, text, widget) {
    return RaisedButton(
          onPressed: () {
            print("Zum " + text +" geht es hier lang.");
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => widget,
                )
            );
          },
          child: Text(text),
        );
  }
}
