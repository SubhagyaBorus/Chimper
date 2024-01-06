import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../Config/Routes/Controller/paradoxController.dart';
import 'AnimatedTextWidget.dart';
import 'HomeAbout/homeAbout.dart';

class HomeView extends StatelessWidget {
  final paraController = Get.put(ParadoxController());
  final index = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          transform: Matrix4.identity()
            ..translate(
                0,
                0,
                paraController.controller.hasClients
                    ? (-(index * 700) +
                        paraController.controller.position.pixels)
                    : 0.0),
          width: MediaQuery.sizeOf(context).width,
          height: 700,
          child: Image.asset(
            "assets/images/home Images/hero_1.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: 700,
          width: MediaQuery.of(context).size.width,
          color: Colors.black.withOpacity(0.4),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 280,
              ),
              AnimatedTextWidget(),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text(
                  "We Make Beautiful Things",
                  style: TextStyle(
                      color: Colors.white54, fontSize: 15, letterSpacing: 1.5),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 40, vertical: 20)),
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromRGBO(13, 12, 181, 10))),
                onPressed: () {},
                child: Text(
                  "Hire us",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 150,
              ),
              homeAbout()
            ],
          ),
        ),
      ],
    );
  }
}
