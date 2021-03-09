import 'package:flutter/material.dart';
import 'package:location/location.dart';
import '../sizeConfig.dart';
import 'body.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {



  @override
  Widget build(BuildContext context) {
    SizeConfig _sizeConfig = new SizeConfig();
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}

