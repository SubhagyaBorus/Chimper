import 'package:chimper/Screens/HomePage/HomeView/HomeAbout/homeAboutDesktop.dart';
import 'package:chimper/Screens/HomePage/HomeView/HomeAbout/homeAboutMobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'homeAboutTablet.dart';

class homeAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => HomeAboutDesktop(),
      tablet: (p0) => homeAboutTablet(),
      mobile: (p0) => homeAboutMobile(),
    );
  }
}
