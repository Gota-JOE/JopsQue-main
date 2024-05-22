
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../widgets/Text_Form_Field.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/jobsque_text.dart';
import '../forgot_password_four/forgot_password_four.dart';
import 'controller/controller.dart';

class ForgotPasswordThree extends StatelessWidget {
  const ForgotPasswordThree({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgotPasswordThreeController());
    final _formKey = GlobalKey<FormState>();
    final passwordController = TextEditingController();

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
                Text('Create new password',
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
                  'Set your new password so you can login and \nacces Jobsque',
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
            Obx(
              () => Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextFormField(
                          labelText: '',
                          hintText: 'Password',
                          prefixIcon: Icon(Icons.lock_outline),
                          suffixIcon: GestureDetector(
                            onTap: controller.togglePasswordVisibility,
                            child: Icon(controller.isPasswordVisible.value
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                          obscureText: !controller.isPasswordVisible.value,
                          onChanged: (value) {
                            controller.password.value =
                                value; //controller.onPassword1Changed;
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter a password';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Password must be at least 8 characters',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CustomTextFormField(
                          labelText: '',
                          hintText: 'confirm',
                          prefixIcon: Icon(Icons.lock_outline),
                          suffixIcon: GestureDetector(
                            onTap: controller.togglePasswordVisibility,
                            child: Icon(controller.isPasswordVisible.value
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                          obscureText: !controller.isPasswordVisible.value,
                          onChanged: (value) {
                            controller.onPassword2Changed;
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please confirm your password';
                            }
                            if (value != controller.password.value) {
                              return 'Passwords do not match';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Both password must match',
                          style: TextStyle(
                            color: Color(0xFF9CA3AF),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ]),
                ),
              ),
            ),
            SizedBox(
              height: 280,
            ),
            Align(
              alignment: Alignment.center,
              child: CustomElevatedButton(
                text: 'Reset password',
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Navigate to the next screen if passwords match
                    Get.to(() => ForgotPasswordFour());
                  }
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
