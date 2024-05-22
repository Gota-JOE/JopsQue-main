
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get.dart';




/*class OnboardingController extends GetxController {
  final PageController _pageController = PageController();
  final RxInt _pageNumber = 0.obs;

  PageController get pageController => _pageController;

  RxInt get pageNumber => _pageNumber;

  void nextPage() {
    _pageNumber.value++;
    if (pageNumber.value == 2) {
      Get.offAndToNamed('/createAccount');
    }
  }

  void skip() {
    Get.offAndToNamed('/createAccount');
  }
}*/

/*class OnboardingController extends GetxController {
  final PageController pageController = PageController();
  RxInt pageNumber = 0.obs;

  void nextPage(BuildContext context) {
    pageController.nextPage(
      duration: const Duration(milliseconds: 150),
      curve: Curves.linear,
    );
    if (pageNumber.value == 2) {
      LocalDataBase.setFirstTime();
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => const CreateAccounScreen(),
        ),
            (route) => false,
      );
    } else {
      pageNumber.value++;
    }
  }
}*/

class OnboardingController extends GetxController {
  final PageController pageController = PageController();
  RxInt pageNumber = 0.obs;

  void onPageChanged(int index) {
    pageNumber.value = index;
  }


  nextPage(BuildContext context) {
    if (pageController.page!.round() < pageController.page!.round() + 1) {
      pageController.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.ease);
    }
  }
  /*void nextPage(BuildContext context) {
    /*if (pageNumber.value == 2) {
      //LocalDataBase.setFirstTime();
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => const CreateAccounScreen(),
        ),
            (route) => false,
      );
    } else {
      pageController.nextPage(
        duration: const Duration(milliseconds: 150),
        curve: Curves.linear,
      );
    }*/
  }*/
}
/*class OnboardingController extends GetxController {
  final PageController pageController = PageController();
  final pageNumber = 0.obs;

  void onPageChanged(final index) {
    pageNumber.value = index;
  }

  void nextPage(BuildContext context) {
    pageController.nextPage(
      duration: const Duration(milliseconds: 150),
      curve: Curves.linear,
    );
    if (pageNumber.value == 2) {
      LocalDataBase.setFirstTime();
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => const CreateAccounScreen(),
        ),
            (route) => false,
      );
    }
  }
}*/
