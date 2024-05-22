import 'package:get/get.dart';

import '../../onboarding_screen/onboarding_screen.dart';



class SplashScreenController extends GetxController {
  @override
  void onInit() {
    navigateToOnboardingScreen();
    super.onInit();
  }

  void navigateToOnboardingScreen() {
    Future.delayed(Duration(seconds: 2), () {
      Get.to(OnboardingScreen());
    });
  }
}