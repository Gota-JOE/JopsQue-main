import 'dart:ui';

import 'package:flutter/cupertino.dart';

class BottomSheetItemMessage extends StatelessWidget {
  BottomSheetItemMessage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
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
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
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
  }
}