import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_network_list/player_list.dart';

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
      () => Get.offAll(const PlayerList()),
    );
  }
}
