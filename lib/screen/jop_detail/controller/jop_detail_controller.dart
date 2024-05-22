import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class JopDetailController extends GetxController {
  final RxInt pageNumber = 0.obs;
  final PageController pageController = PageController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    pageController.dispose();
  }
}