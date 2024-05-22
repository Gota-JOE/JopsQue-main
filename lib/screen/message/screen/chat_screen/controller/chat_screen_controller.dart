import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../widget/BottomSheetItemChat.dart';

class ChatScreenController extends GetxController {
  void sendMessage(String message) {
    // Add code to send message here
    print("Message sent: $message");
  }

  void bootomSheet(BuildContext context) {
    showModalBottomSheet(
      // useSafeArea: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      context: context,
      builder: (context) {
        return Container(
          padding:
              const EdgeInsets.only(top: 25, right: 20, left: 20, bottom: 20),
          // height: MediaQuery.of(context).size.height * 0.5,
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                      //Navigator.of(context).pop();
                    },
                    child: const BottomSheetItemChat(
                      image: "assets/image/icons/briefcase.png",
                      title: "Visit job post",
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const BottomSheetItemChat(
                      image: "assets/image/icons/note.png",
                      title: "View my application",
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const BottomSheetItemChat(
                      image: "assets/image/icons/sms.png",
                      title: "Mark as unread",
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const BottomSheetItemChat(
                      image: "assets/image/icons/notification.png",
                      title: "Mute",
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const BottomSheetItemChat(
                      image: "assets/image/icons/import.png",
                      title: "Archive",
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const BottomSheetItemChat(
                      image: "assets/image/icons/trash.png",
                      title: "Delete conversation",
                    ),
                  ),
                ]),
          ),
        );
      },
    );
  }
}
