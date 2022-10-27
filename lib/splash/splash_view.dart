import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_network_list/splash/splash_controller.dart';

class SplashView extends StatelessWidget {
  final controller = Get.put(SplashController());
  SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Image(
          image: AssetImage('assets/images/launcherimage.jpg')
        ),
      ),
    );
  }
}
