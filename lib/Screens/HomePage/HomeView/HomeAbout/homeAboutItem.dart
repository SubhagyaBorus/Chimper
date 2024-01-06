import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';

class homeAboutItem extends StatelessWidget {
  final String title;
  final IconData icons;

  const homeAboutItem({super.key, required this.title, required this.icons});
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  icons,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child:
                  sizingInformation.deviceScreenType == DeviceScreenType.desktop
                      ? Text(
                          "Lorem ipsum dolor sit amet\nconsectetur adipisicing elit\nCumque ab nihil quam nesciunt.",
                          style: TextStyle(
                            color: Colors.white30,
                            height: 1.8,
                            fontSize: 15,
                          ),
                        )
                      : Text(
                          "Lorem ipsum dolor sit amet consectetur adipisicing elit Cumque ab nihil quam nesciunt.",
                          style: TextStyle(
                            color: Colors.white30,
                            fontSize: 15,
                          ),
                        ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Read More",
              style: TextStyle(
                  fontSize: 15,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                  color: Colors.white),
            ),
            SizedBox(
              height:
                  sizingInformation.deviceScreenType == DeviceScreenType.desktop
                      ? 0
                      : 30,
            )
          ],
        ),
      ),
    );
  }
}
