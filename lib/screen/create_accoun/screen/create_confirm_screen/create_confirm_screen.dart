import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:graduated_project/widgets/custom_elvated_button.dart';

import '../../../login/login_screen.dart';

class CreatConfirmScreen extends StatelessWidget {
  const CreatConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Spacer(),
            Image.asset(
                "assets/image/Ilustration/Success Account Ilustration.png"),
            const SizedBox(
              height: 24,
            ),
            const Text(
              "Your account has been set up!",
              // textAlign: TextAlign.end,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text("We have customized feeds according to your preferences",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xff6B7280),
                    fontSize: 16,
                    fontWeight: FontWeight.w400)),
            const Spacer(
              flex: 3,
            ),
            CustomElvatedButton(
                text: const Text("Get Started"),
                onpress: () {
                  Get.to(LoginScreen());
                },
                color: const Color(0xff3366FF)),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
