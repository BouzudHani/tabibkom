import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {



  @override
  void initState(){
    // TODO: implement initState
    // ignore: unrelated_type_equality_checks
    super.initState();
  }
  final Completer<WebViewController> _cntroller = Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body:WebView(

        initialUrl: 'https://tabibkom.online/',
        onWebViewCreated: (WebViewController web){
          _cntroller.complete(web);
        },
        javascriptMode: JavascriptMode.unrestricted,
      )
    ));
  }
}
