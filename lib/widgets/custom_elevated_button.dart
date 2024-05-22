import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final text;
  final Function()? onPressed;
  final textColor;

  final shapeDecorationColor;
  final TextEditingController? controller;

  const CustomElevatedButton(
      {super.key,
      required this.text,
      required this.textColor,
      this.shapeDecorationColor,
      this.onPressed,
      this.controller});

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
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            // Replace with your desired color
            fixedSize: MaterialStateProperty.all(Size(300, 48)),
            // Replace with your desired width and height
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    1000))), // Replace with your desired shape
          ),
        )
        /*ElevatedButton(
          onPressed: onPressed,
          child: Text(text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textColor,
                fontSize: 16,
                //fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500,
                height: 0.08,
                letterSpacing: 0.16,
              )),
        ),*/
      ],
    );
  }
}
