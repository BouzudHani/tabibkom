import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:permission_handler/permission_handler.dart';


class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  Timer _timer;


  Future<void> _checkPermission()async{
    print('check permission ');
   if (await Permission.location.request().isGranted){
     print('location permision granted');
     if(await Permission.phone.request().isGranted){
       print('phone permision granted');
       Navigator.pushReplacementNamed(context, '/home');
     }else{
       SystemNavigator.pop();
     }
   }else{
     SystemNavigator.pop();
   }
  }


  void timer()async{
   _timer = new Timer(const Duration(milliseconds: 3800), () async{

   });
   await _checkPermission();
  }

  @override
  void initState() {
    super.initState();
    timer();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.cyan[700],
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Easy Med',
                style: TextStyle(
                    fontSize: size.width*0.2, fontFamily: 'KaushanScript', color: Colors.white),
              ),
              SizedBox(
                height: 40,
              ),
              SpinKitChasingDots(
                color: Colors.white,
                size: 50.0,
              ),
            ],
          )),
    );
  }
}
