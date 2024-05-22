import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextMessage extends StatelessWidget {
  const CustomTextMessage({
    super.key,
    required this.messageController,
    required this.onSendMessage,
  });

  final TextEditingController messageController;
  final Function(String) onSendMessage;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: (value) {
        onSendMessage(value);
      },
      // maxLines: 200,
      controller: messageController,
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
  }
}
