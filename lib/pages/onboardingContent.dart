import 'package:flutter/material.dart';

import 'package:tabibkom/sizeConfig.dart';

class onboardingContent extends StatelessWidget {
  const onboardingContent({Key key, this.text, this.image}) : super(key: key);

  final String text, image;

  @override
  Widget build(BuildContext context) {
    SizeConfig _sizeConfig = new SizeConfig();
    return Column(
      children: [
        Text(
          "TABIBKOM",
          style: TextStyle(
              color: Colors.lightBlueAccent[400],
              fontSize: _sizeConfig.getProportionateScreenWidth(36),
              fontWeight: FontWeight.bold),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'BalsamiqSans'
          ),
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: _sizeConfig.getProportionateScreenHeight(250),
          width: _sizeConfig.getProportionateScreenWidth(235),
        )
      ],
    );
  }
}
