import 'package:flutter/material.dart';

import 'Button.dart';
import 'onboardingContent.dart';
import 'package:tabibkom/sizeConfig.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  PageController pageController = new PageController();
  SizeConfig _sizeConfig = new SizeConfig();

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: 0,
    );
  }

  List<Map<String, String>> onboardingData = [
    {
      "text": "disponibilités de milliers de professionnels de santé",
      "image": "images/now1.jpg"
    },
    {
      "text": "Prenez rendez vous en ligne, 24h/24 et 7j/7",
      "image": "images/now2.jpg"
    },
    {
      "text": "Recevez des rappels automatiques par SMS ou par email.",
      "image": "images/now3.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Spacer(),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: _sizeConfig.getProportionateScreenHeight(20)),
                child: PageView.builder(
                  controller: pageController,
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: onboardingData.length,
                  itemBuilder: (context, index) => onboardingContent(
                      image: onboardingData[index]["image"],
                      text: onboardingData[index]["text"]),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: _sizeConfig.getProportionateScreenHeight(20)),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          onboardingData.length,
                          (index) => buildDots(index: index),
                        )),
                    Spacer(flex: 2),
                    Button(
                      text: currentPage + 1 == onboardingData.length
                          ? "EXPLORER TABIBKOM !"
                          : "SUIVANT",
                      press: () {
                        currentPage + 1 == onboardingData.length
                            ? Navigator.pushReplacementNamed(context, '/start')
                            : pageController.nextPage(
                                curve: Curves.ease,
                                duration: Duration(milliseconds: 400));
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDots({int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 15 : 6,
      decoration: BoxDecoration(
          color: currentPage == index
              ? Colors.lightBlueAccent[400]
              : Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3.0)),
    );
  }
}
