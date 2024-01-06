import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AnimatedTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => AnimatedTextWidgetDesktopTablet(),
      tablet: (p0) => AnimatedTextWidgetDesktopTablet(),
      mobile: (p0) => AnimatedTextWidgetMobile(),
    );
  }
}

Widget AnimatedTextWidgetDesktopTablet() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("We Are Expert in ",
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
            letterSpacing: 2,
          )),
      AnimatedTextKit(
          repeatForever: true,
          isRepeatingAnimation: true,
          animatedTexts: [
            TypewriterAnimatedText("Web Apps",
                cursor: "|",
                speed: Duration(milliseconds: 100),
                textStyle: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  letterSpacing: 2,
                )),
            TypewriterAnimatedText("Mobile Apps",
                cursor: "|",
                speed: Duration(milliseconds: 100),
                textStyle: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  letterSpacing: 2,
                )),
            TypewriterAnimatedText("WordPress",
                cursor: "|",
                speed: Duration(milliseconds: 100),
                textStyle: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  letterSpacing: 2,
                ))
          ]),
    ],
  );
}

Widget AnimatedTextWidgetMobile() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("We Are Expert in ",
          style: TextStyle(
            fontSize: 35,
            color: Colors.white,
            letterSpacing: 2,
          )),
      AnimatedTextKit(
          repeatForever: true,
          isRepeatingAnimation: true,
          animatedTexts: [
            TypewriterAnimatedText("Web Apps",
                cursor: "|",
                speed: Duration(milliseconds: 100),
                textStyle: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  letterSpacing: 2,
                )),
            TypewriterAnimatedText("Mobile Apps",
                cursor: "|",
                speed: Duration(milliseconds: 100),
                textStyle: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  letterSpacing: 2,
                )),
            TypewriterAnimatedText("WordPress",
                cursor: "|",
                speed: Duration(milliseconds: 100),
                textStyle: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  letterSpacing: 2,
                ))
          ]),
    ],
  );
}
