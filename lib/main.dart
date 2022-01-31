import 'dart:async';
import 'package:flutter/material.dart';


import './home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Splash2(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SecondScreen();
    // return SplashScreen(
    //   seconds: 6,
    //   navigateAfterSeconds: new SecondScreen(),
    //   title: new Text(
    //     'Histogram Equalizer',
    //     textScaleFactor: 2,
    //   ),
      
    //   loadingText: Text('Loading'),
    //   photoSize: 100,
    //   loaderColor: Colors.green.shade900,
    // );
  }
}


