import 'package:chimper/Common/NavigationBar/NavigationbarItem.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Navigationbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Container(
        padding: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? EdgeInsets.symmetric(horizontal: 10, vertical: 20)
            : EdgeInsets.symmetric(vertical: 20),
        child: Row(
          mainAxisAlignment: sizingInformation.deviceScreenType ==
                  DeviceScreenType.desktop
              ? MainAxisAlignment.spaceAround
              : sizingInformation.deviceScreenType == DeviceScreenType.tablet
                  ? MainAxisAlignment.spaceAround
                  : MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                  left: sizingInformation.deviceScreenType ==
                          DeviceScreenType.desktop
                      ? 25
                      : 0,
                  right: sizingInformation.deviceScreenType ==
                          DeviceScreenType.desktop
                      ? 0
                      : sizingInformation.deviceScreenType ==
                              DeviceScreenType.tablet
                          ? 200
                          : 0),
              child: Text(
                "Chimper",
                style: TextStyle(fontSize: 35),
              ),
            ),
            Container(
              child: sizingInformation.deviceScreenType ==
                      DeviceScreenType.desktop
                  ? Container(
                      padding: EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          NavigationBarItem(onPressed: () {}, title: "Home"),
                          NavigationBarItem(onPressed: () {}, title: "Work"),
                          NavigationBarItem(
                              onPressed: () {}, title: "Services"),
                          NavigationBarItem(onPressed: () {}, title: "About"),
                          NavigationBarItem(onPressed: () {}, title: "Blogs"),
                          NavigationBarItem(onPressed: () {}, title: "Contact")
                        ],
                      ),
                    )
                  : IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: Icon(
                        Icons.menu,
                        size: sizingInformation.deviceScreenType ==
                                DeviceScreenType.mobile
                            ? 30
                            : 40,
                      )),
            )
          ],
        ),
      ),
    );
  }
}
