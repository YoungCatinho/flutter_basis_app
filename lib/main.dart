import 'package:flutter/material.dart';
import 'package:flutter_basis_app/screens/havaneser_screen.dart';
import 'package:flutter_basis_app/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neue Basis App',
      theme: ThemeData(
        // This is the theme of your application.


        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}