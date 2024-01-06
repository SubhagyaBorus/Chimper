import 'package:flutter/material.dart';

class NavigationBarItem extends StatelessWidget {
  final String title;
  final void Function()? onPressed;

  NavigationBarItem({super.key, required this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 15,
            letterSpacing: 2,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
