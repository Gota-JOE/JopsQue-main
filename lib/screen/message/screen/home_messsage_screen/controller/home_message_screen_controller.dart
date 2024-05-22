import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeMessageScreenController extends GetxController {
  final searchController = TextEditingController();
  final nameOfCompany = [
    "Twitter",
    "Gojek Indonesia",
    "Shoope",
    "Dana",
    "Slack",
    "Facebook",
  ].obs;
  final imageOfCompany = [
    "assets/image/just image/Twitter Logo.png",
    "assets/image/image Company/Gojek Logo.png",
    "assets/image/image Company/Shoope Logo.png",
    "assets/image/image Company/Dana Logo.png",
    "assets/image/image Company/Slack Logo.png",
    "assets/image/image Company/Facebook Logo.png",
  ].obs;
}
