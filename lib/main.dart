import 'package:flutter/material.dart';
import 'package:tabibkom/pages/Home.dart';
import 'package:tabibkom/pages/onboardingmain.dart';
import 'package:tabibkom/pages/start.dart';
void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner:false ,
    theme: ThemeData(
      primaryColor: Color(0xFF6F35A5),
      scaffoldBackgroundColor: Colors.white,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    initialRoute: '/',
    routes: {
      '/': (context) => Onboarding(),
      '/start' : (context) => Start(),
      '/home': (context) => Home(),
    }
));