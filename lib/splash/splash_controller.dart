import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_network_list/user_list/user_view.dart';


class SplashController extends GetxController {
  @override
  void onInit() {
    setTimer();
    super.onInit();
  }

  void setTimer() {
    debugPrint("setTimer");
    Timer(
      const Duration(milliseconds: 3000),
      () => Get.offAll(UserView()),
    );
  }
}
