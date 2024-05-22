import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/controller.dart';

class CustomElevatedButton extends StatelessWidget {
  final controller = Get.put(ForgotPasswordThreeController());

  final String text;
  final Function()? onPressed;
  final textColor;
  final shapeDecorationColor;
  final password = TextEditingController();
  final confirm = TextEditingController();

  CustomElevatedButton(
      {super.key,
      required this.text,
      required this.textColor,
      this.shapeDecorationColor,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(

          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          // style: controller.buttonColor.value;
        ),
      ],
    );
  }
}
