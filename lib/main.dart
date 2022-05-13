import 'package:flutter/material.dart';
import 'package:merssie/pages/main_screen.dart';
import 'package:merssie/pages/perfilPage.dart';
import 'package:merssie/pages/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Merssie',
      home: SplashScreen(),
      theme: ThemeData(
        primaryColor: Color.fromARGB(200, 240, 104, 67),
        secondaryHeaderColor: Colors.deepOrange,
        accentColor: Color(0XFF030047),
        highlightColor: Color.fromARGB(255, 4, 0, 245),
        textTheme: TextTheme(
            // mainAxisAlignment: MainAxisAlignment.end,

            headline1: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            headline2: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 53, 53, 53),
            ),
            headline3: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 175, 64, 24),
            ),
            headline4: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 44, 42, 42),
            ),
            headline5: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 79, 77, 77),
            ),
            headline6: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
            bodyText1: TextStyle(
                fontSize: 20.0, color: Color.fromARGB(255, 135, 57, 40)),
            bodyText2: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16.0,
              color: Colors.black,
            ),
            subtitle1: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
                color: Color(0XFFB7B7D2))),
      ),
    );
  }
}
