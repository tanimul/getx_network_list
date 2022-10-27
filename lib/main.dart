import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_network_list/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter GetX State Management Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SplashView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
