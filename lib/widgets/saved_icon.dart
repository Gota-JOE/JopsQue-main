import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graduated_project/model/jops.dart';
import 'package:get/get.dart';

import '../provider/provider.dart';

/*class SavedIcon extends StatelessWidget {
  final Jops jops;

  SavedIcon({required this.jops});

  @override
  Widget build(BuildContext context) {
    final SavedIconController controller = Get.put(SavedIconController());

    return GestureDetector(
      onTap: () {
        if (jops.isSaved) {
          controller.unsaveJop(jops);
        } else {
          controller.savedJop(jops);
        }
        controller.update();
      },
      child: Obx(() => Image.asset(
        jops.isSaved
            ? "assets/image/icons/archive-minus_bold.png"
            : "assets/image/icons/archive-minus.png",
        height: 25,
        color: jops.isSaved ? const Color(0xff3366ff) : Colors.black,
      )),
    );
  }
}

class SavedIconController extends GetxController {
  var savedJopsList = <Jops>[].obs;

  void savedJop(Jops jops) {
    jops.isSaved = true;
    savedJopsList.add(jops);
  }

  void unsaveJop(Jops jops) {
    jops.isSaved = false;
    savedJopsList.remove(jops);
  }
}*/
class SavedIcon extends StatefulWidget {
  const SavedIcon({
    super.key,
    required this.jops,
  });
  final Jops jops;
  @override
  State<SavedIcon> createState() => _SavedIconState();
}

class _SavedIconState extends State<SavedIcon> {
 // JopProvider1 controller = Get.put(JopProvider1());
  late bool isSaved;

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return GestureDetector(
        onTap: () {
          if (widget.jops.isSaved) {
            ref.watch(providerr).unsaveJop(widget.jops);
          } else {
            ref.watch(providerr).savedJop(widget.jops);
          }
          setState(() {});
        },
        child: Image.asset(
            widget.jops.isSaved
                ? "assets/image/icons/archive-minus_bold.png"
                : "assets/image/icons/archive-minus.png",
            height: 25,
            color:
                widget.jops.isSaved ? const Color(0xff3366ff) : Colors.black),
      );
    });
  }
}
