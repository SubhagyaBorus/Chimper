import 'package:flutter/material.dart';

import 'drawerItem.dart';

class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 280,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 150,
          ),
          DrawerItem(onTap: () {}, title: "Home"),
          DrawerItem(onTap: () {}, title: "Work"),
          DrawerItem(onTap: () {}, title: "Services"),
          DrawerItem(onTap: () {}, title: "About"),
          DrawerItem(onTap: () {}, title: "Blogs"),
          DrawerItem(onTap: () {}, title: "Contact")
        ],
      ),
    );
  }
}
