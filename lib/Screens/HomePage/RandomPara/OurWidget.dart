import 'package:flutter/material.dart';

class OurWidget extends StatelessWidget {
  final String number;
  final String title;

  const OurWidget({super.key, required this.number, required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            child: Text(
              number,
              style: TextStyle(
                  fontSize: 130,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(242, 244, 245, 50),
                  letterSpacing: 2),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50, left: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  child: Text(
                    "Lorem ipsum dolor sit amet consectetur adipisicing elit. Et praesentium eos nulla qui commodi consectetur beatae fugiat. Veniam iste rerum perferendis.",
                    style: TextStyle(
                        fontSize: 15,
                        height: 1.5,
                        letterSpacing: 2,
                        color: Colors.black.withOpacity(0.8)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
