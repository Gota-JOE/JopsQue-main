import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widgets/jobsque_text.dart';
import 'controller/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SplashScreenController splashScreenViewModel =
    Get.put(SplashScreenController());
    return Scaffold(
      body: Stack(
        children: [
          Center(child: Image.asset('assets/image/splash_image/img_blur.png')),
          JobsqueText(
            fontSize: 24.0, widthIcon: 24.0, heightIcon: 24.0,
          ),
        ],
      ),
    );
  }
}