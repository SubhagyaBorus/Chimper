import 'package:chimper/Screens/HomePage/HomeView/HomeAbout/homeAboutItem.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class homeAboutMobile extends StatelessWidget {
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
          width: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
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
                    width: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 3 / 4.54,
                    height: 80,
                    child: Text(
                      "Welcome To Chimper An Award Winning Web Agency",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          overflow: TextOverflow.clip,
                          letterSpacing: 1.5),
                      maxLines: 3,
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 1 / 1.1, //650
                margin: EdgeInsets.only(left: 10, top: 30),
                child: Image.asset(
                  "assets/images/home Images/about_1.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              //  homeAboutItem()
              Container(
                  width: MediaQuery.of(context).size.height,
                  height: 610,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: homeAboutItems.length,
                    itemBuilder: (context, index) => homeAboutItem(
                        title: '${homeAboutItems[index]['title'].toString()}',
                        icons: homeAboutItems[index]['icon']),
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
