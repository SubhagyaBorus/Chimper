import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'homeAboutItem.dart';

class HomeAboutDesktop extends StatelessWidget {
  final List<Map<String, dynamic>> homeAboutItems = [
    {"title": "Web Design", "icon": FontAwesomeIcons.desktop},
    {"title": "Art Direction", "icon": FontAwesomeIcons.artstation},
    {"title": "Branding & Identity", "icon": FontAwesomeIcons.puzzlePiece},
    {"title": "Copy Writing", "icon": FontAwesomeIcons.comments}
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          color: Colors.black,
          height: 600,
          width: 1000,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color.fromRGBO(13, 12, 181, 5)),
                        child: IconButton(
                            onPressed: () {},
                            icon: FaIcon(
                              FontAwesomeIcons.play,
                              size: 18,
                              color: Colors.white,
                            )),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Container(
                            child: Text(
                              "Welcome To Chimper An Award\nWinning Web Agency",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  letterSpacing: 1.5),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  //  homeAboutItem()
                  Container(
                    height: 460,
                    width: 492,
                    child: GridView.builder(
                      itemCount: homeAboutItems.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          mainAxisExtent: 200,
                          crossAxisCount: 2),
                      itemBuilder: (context, index) => homeAboutItem(
                          title: homeAboutItems[index]['title'].toString(),
                          icons: homeAboutItems[index]['icon']),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          height: 520,
          width: 390,
          margin: EdgeInsets.only(left: 20, top: 140),
          child: Image.asset(
            "assets/images/home Images/about_1.jpg",
            fit: BoxFit.fill,
          ),
        )
      ],
    );
  }
}
