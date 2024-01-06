import 'package:chimper/Common/Drawer/drawer.dart';
import 'package:chimper/Common/TopDetail/TopDetail.dart';
import 'package:chimper/Config/Routes/Controller/paradoxController.dart';
import 'package:chimper/Screens/HomePage/HomeView/HomeView.dart';
import 'package:chimper/Screens/HomePage/RandomPara/RandomPara.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Common/NavigationBar/NavigationBar.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final paraController = Get.put(ParadoxController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: TopDetail(),
          ),
          SliverToBoxAdapter(
            child: Navigationbar(),
          ),
          SliverToBoxAdapter(
            child: HomeView(),
          ),
          SliverToBoxAdapter(child: RandomPara())
        ],
      ),
    );
  }
}
