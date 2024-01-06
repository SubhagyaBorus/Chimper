import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'OurWidget.dart';

class RandomPara extends StatelessWidget {
  final List<Map<String, dynamic>> ourItem = [
    {"number": "01.", "title": "Our Values"},
    {"number": "02.", "title": "Our Mission"},
    {"number": "03.", "title": "Our Philosophy"}
  ];
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.sizeOf(context).width * 1 / 15),
              height:
                  sizingInformation.deviceScreenType == DeviceScreenType.desktop
                      ? 380
                      : sizingInformation.deviceScreenType ==
                              DeviceScreenType.tablet
                          ? 700
                          : 800,
              child: GridView.builder(
                itemCount: ourItem.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: sizingInformation.deviceScreenType ==
                            DeviceScreenType.desktop
                        ? 3
                        : sizingInformation.deviceScreenType ==
                                DeviceScreenType.tablet
                            ? 2
                            : 1,
                    mainAxisExtent: sizingInformation.deviceScreenType ==
                            DeviceScreenType.desktop
                        ? 290
                        : sizingInformation.deviceScreenType ==
                                DeviceScreenType.tablet
                            ? 340
                            : 241),
                itemBuilder: (context, index) => OurWidget(
                  number: ourItem[index]['number'].toString(),
                  title: ourItem[index]['title'].toString(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
