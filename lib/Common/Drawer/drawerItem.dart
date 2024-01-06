import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final void Function()? onTap;

  DrawerItem({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: InkWell(
        onTap: onTap,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            letterSpacing: 2,
            color: Colors.black.withOpacity(0.8),
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
