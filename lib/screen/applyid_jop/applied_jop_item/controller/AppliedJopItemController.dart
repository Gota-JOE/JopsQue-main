import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../../model/jops.dart';

class AppliedJopItemController extends GetxController {
  AppliedJopItemController(this.jop);

  final Jops jop;
  late final RxInt pageNumber = 0.obs;
  late final List<String> listLocation;

  @override
  void onInit() {
    listLocation = jop.location.split(" ");
    super.onInit();
  }

  void incrementPageNumber() {
    pageNumber.value++;
    update();
  }

  void decrementPageNumber() {
    pageNumber.value--;
    update();
  }
}

