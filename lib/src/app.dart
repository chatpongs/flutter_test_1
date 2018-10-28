import 'package:flutter/material.dart';
import './screens/home.dart';
import './screens/consent.dart';
import './screens/questionair.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.purple,
        buttonColor: Colors.purpleAccent,
        buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
        fontFamily: 'Kanit',
        textTheme: TextTheme(
          body1: TextStyle(fontSize: 16.0),
        ),
      ),
      // home: Home(),
      routes: {
        '/': (context) => Home(),
        '/consent': (context) => Consent(),
        '/questionair': (context) => Questionair(),
      },
    );
  }
}
