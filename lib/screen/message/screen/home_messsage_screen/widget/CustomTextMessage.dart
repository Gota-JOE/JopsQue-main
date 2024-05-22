import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextMessage extends StatelessWidget {
  const CustomTextMessage({
    super.key,
    required TextEditingController messageController,
    required Function(dynamic message) onSendMessage,
  }) : _messageController = messageController;

  final TextEditingController _messageController;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomTextMessageController>(
      init: CustomTextMessageController(),
      builder: (controller) {
        return TextFormField(
          onFieldSubmitted: (value) {
            controller.sendMessage(_messageController.text);
            _messageController.clear();
          },
          controller: _messageController,
          decoration: const InputDecoration(
              contentPadding: EdgeInsets.only(left: 20),
              focusColor: Colors.amber,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffD1D5DB)),
                  borderRadius: BorderRadius.all(Radius.circular(100))),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffD1D5DB)),
                  borderRadius: BorderRadius.all(Radius.circular(100))),
              hintText: "Write a message..."),
        );
      },
    );
  }
}

class CustomTextMessageController extends GetxController {
  void sendMessage(String message) {
    // Add code to send message here
    print("Message sent: $message");
    update(); // Notify listeners that the state has changed
  }
}
