import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ApplyidJopController extends GetxController {
  RxInt pageNumber = 0.obs;
  final PageController pageController = PageController();
}