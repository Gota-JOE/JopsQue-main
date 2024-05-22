import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../widgets/Text_Form_Field.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/jobsque_text.dart';
import '../../login/login_screen.dart';
import '../forgot_password_two/forgot_password_two.dart';

class ForgotPasswordOne extends StatelessWidget {
  const ForgotPasswordOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(Icons.arrow_back),
                ),
                SizedBox(
                  width: 220,
                ),
                JobsqueText(
                  fontSize: 16.0,
                  widthIcon: 16.0,
                  heightIcon: 16.0,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text('Reset Password',
                    style: TextStyle(
                      color: Color(0xFF111827),
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Enter the email address you used when you \njoined and we’ll send you instructions to reset \nyour password.',
                  style: TextStyle(
                    color: Color(0xFF6B7280),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Form(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: CustomTextFormField(
                  labelText: '',
                  hintText: 'Enter your email...',
                  prefixIcon: Icon(Icons.email_outlined),
                  obscureText: false,
                ),
              ),
            ),
            SizedBox(
              height: 390,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'You remember your password',
                  style: TextStyle(
                    color: Color(0xFF9CA3AF),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => LoginScreen());
                  },
                  child: const Text(' Login',
                      style: TextStyle(
                        color: Color(0xFF3366FF),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: CustomElevatedButton(
                text: 'Request password reset',
                onPressed: () {
                  Get.to(() => ForgotPasswordTwo());
                },
                textColor: Colors.white, //Color(0xFF6B7280),
                shapeDecorationColor: Color(0xFFD1D5DB),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
