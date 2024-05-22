import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../../model/jops.dart';


class JopDetailDescreptionController extends GetxController {
  Jops? jops;

  //late Jops jops ;

  set jopsData(Jops newJops) {
    jops = newJops;
    update();
  }
}