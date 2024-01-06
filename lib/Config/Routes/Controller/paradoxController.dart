import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ParadoxController extends GetxController {
  late ScrollController controller;
  RxBool isScrolled = false.obs;

  @override
  void onInit() {
    controller = ScrollController();
    super.onInit();

    controller.addListener(() {
      if (controller.offset > 0 && !isScrolled.value) {
        isScrolled.value = true;
      } else if (controller.offset <= 0 && isScrolled.value) {
        isScrolled.value = false;
      }
    });
  }
}
