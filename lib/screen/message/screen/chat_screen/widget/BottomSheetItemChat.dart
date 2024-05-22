import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import '../controller/chat_screen_controller.dart';

class BottomSheetItemChat extends StatelessWidget {
  const BottomSheetItemChat({
    super.key,
    required this.title,
    required this.image,
  });

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChatScreenController>(
      builder: (controller) {
        return Container(
          height: 50,
          decoration: BoxDecoration(
            // color: Colors.amber,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: const Color(0xffD1D5DB),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  image,
                  color: Colors.black.withOpacity(0.8),
                  height: 25,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                Image.asset(
                  "assets/image/icons/arrow-right.png",
                  height: 20,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
