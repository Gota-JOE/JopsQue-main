import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:get/get.dart';

/*class WorkInterestedItemController extends GetxController {
  Rx<Color> containerColor1 = const Color(0xffD1D5DB).withOpacity(0.2).obs;
  Rx<Color> borderColor1 = const Color(0xffD1D5DB).obs;
  Rx<Color> iconColor1 = const Color(0xff292d32).obs;

  Rx<Color> containerColor2 = const Color(0xffD1D5DB).withOpacity(0.2).obs;
  Rx<Color> borderColor2 = const Color(0xffD1D5DB).obs;
  Rx<Color> iconColor2 = const Color(0xff292d32).obs;

  void changeColor1() {
    containerColor1.value =
    containerColor1.value == const Color(0xff3366FF).withOpacity(0.15)
        ? const Color(0xffD1D5DB).withOpacity(0.2)
        : const Color(0xff3366FF).withOpacity(0.15);

    borderColor1.value = borderColor1.value == const Color(0xff3366FF)
        ? const Color(0xffD1D5DB)
        : const Color(0xff3366FF);

    iconColor1.value = iconColor1.value == const Color(0xff3366FF)
        ? const Color(0xff292d32)
        : const Color(0xff3366FF);
  }

  void changeColor2() {
    containerColor2.value =
    containerColor2.value == const Color(0xff3366FF).withOpacity(0.15)
        ? const Color(0xffD1D5DB).withOpacity(0.2)
        : const Color(0xff3366FF).withOpacity(0.15);

    borderColor2.value = borderColor2.value == const Color(0xff3366FF)
        ? const Color(0xffD1D5DB)
        : const Color(0xff3366FF);

    iconColor2.value = iconColor2.value == const Color(0xff3366FF)
        ? const Color(0xff292d32)
        : const Color(0xff3366FF);
  }
}

class WorkInterestedItem extends StatelessWidget {
  final String interestedName;
  final String interestedeIcon;
  final WorkInterestedItemController controller;

  const WorkInterestedItem({
    super.key,
    required this.interestedName,
    required this.interestedeIcon,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Change the color when the container is tapped
        controller.changeColor1();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        // width: 156,
        // height: 125,
        margin: const EdgeInsets.only(bottom: 10, right: 10, left: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1.5, color: controller.borderColor1.value),
          color: controller.containerColor1.value,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: controller.borderColor1.value),
                    borderRadius: BorderRadius.circular(200),
                  ),
                  child: Image.asset(
                    interestedeIcon,
                    scale: 2.5,
                    color: controller.iconColor1.value,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  interestedName,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}*/

/*class WorkInterestedItem extends StatelessWidget {
  WorkInterestedItem({
    super.key,
    required this.interestedName,
    required this.interestedeIcon,
  });

  final String interestedName;
  final String interestedeIcon;

  final Rx<Color> containerColor = const Color(0xffD1D5DB).withOpacity(0.2).obs;
  final Rx<Color> borderColor = const Color(0xffD1D5DB).obs;
  final Rx<Color> iconColor = const Color(0xff292d32).obs;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Change the color when the container is tapped
        containerColor.value =
        containerColor.value == const Color(0xff3366FF).withOpacity(0.15)
            ? const Color(0xffD1D5DB).withOpacity(0.2)
            : const Color(0xff3366FF).withOpacity(0.15);

        borderColor.value = borderColor.value == const Color(0xff3366FF)
            ? const Color(0xffD1D5DB)
            : const Color(0xff3366FF);

        iconColor.value = iconColor.value == const Color(0xff3366FF)
            ? const Color(0xff292d32)
            : const Color(0xff3366ff);
      },
      child: Obx(
            () => Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          // width: 156,
          // height: 125,
          margin: const EdgeInsets.only(bottom: 10, right: 10, left: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(width: 1.5, color: borderColor.value),
            color: containerColor.value,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: borderColor.value),
                      borderRadius: BorderRadius.circular(200),
                    ),
                    child: Image.asset(
                      interestedeIcon,
                      scale: 2.5,
                      color: iconColor.value,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    interestedName,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/

class WorkInterestedItem extends StatefulWidget {
  const WorkInterestedItem({
    super.key,
    required this.interestedName,
    required this.interestedeIcon,
  });

  final String interestedName;
  final String interestedeIcon;

  @override
  State<WorkInterestedItem> createState() => _WorkInterestedItemState();
}

class _WorkInterestedItemState extends State<WorkInterestedItem> {
  Color containerColor = const Color(0xffD1D5DB).withOpacity(0.2);
  Color borderColor = const Color(0xffD1D5DB);
  Color iconColor = const Color(0xff292d32);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Change the color when the container is tapped
        setState(() {
          containerColor =
              containerColor == const Color(0xff3366FF).withOpacity(0.15)
                  ? const Color(0xffD1D5DB).withOpacity(0.2)
                  : const Color(0xff3366FF).withOpacity(0.15);

          borderColor = borderColor == const Color(0xff3366FF)
              ? const Color(0xffD1D5DB)
              : const Color(0xff3366FF);

          iconColor = iconColor == const Color(0xff3366FF)
              ? const Color(0xff292d32)
              : const Color(0xff3366ff);
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        // width: 156,
        // height: 125,
        margin: const EdgeInsets.only(bottom: 10, right: 10, left: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1.5, color: borderColor),
          color: containerColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: borderColor),
                        borderRadius: BorderRadius.circular(200)),
                    child: Image.asset(
                      widget.interestedeIcon,
                      scale: 2.5,
                      color: iconColor,

                      // width: 20,
                    )
                    //  Image(
                    //   image: widget.interestedeIcon,
                    //   ,
                    // )
                    ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  widget.interestedName,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}