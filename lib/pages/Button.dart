import 'package:flutter/material.dart';
import 'package:tabibkom/sizeConfig.dart';


class Button extends StatelessWidget {
  const Button({Key key, this.press, this.text}) : super(key: key);

  final String text;
  final Function press;


  @override
  Widget build(BuildContext context) {
    SizeConfig _sizeConfig = new SizeConfig();
    return SizedBox(
      width: double.infinity,
      height: _sizeConfig.getProportionateScreenHeight(56),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Colors.lightBlueAccent[400],
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
              fontSize: _sizeConfig.getProportionateScreenHeight(18), color: Colors.white),
        ),
      ),
    );
  }
}
