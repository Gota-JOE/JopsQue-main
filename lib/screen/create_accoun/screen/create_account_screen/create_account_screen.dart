// ignore_for_file: use_build_context_synchronously

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:graduated_project/widgets/logo_app.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widgets/custom_elvated_button.dart';
import '../../../../widgets/logos.dart';
import '../../../../widgets/text_field/custom_textfield.dart';
import '../../../../widgets/text_field/custom_textfield_pass.dart';
import '../../../login/controller/login_controller.dart';
import '../../../login/login_screen.dart';
import '../work_interested_screen/work_interested_screen.dart';
import 'controller/create_account_controller.dart';

class CreateAccounScreen extends StatelessWidget {
  final dio = Get.put(Dio());
  CreateAccountController controller = Get.put(CreateAccountController());
  CreateAccounScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var pageSize = MediaQuery.of(context).size.height;
    var notifySize = MediaQuery.of(context).padding.top;
    var appBarSize = Get.height * 0.06;
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Logo(
            height: 19,
            width: 81,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: pageSize - (appBarSize + notifySize),
          padding:
              const EdgeInsets.only(top: 39, right: 15, left: 15, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Create Account",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 9,
              ),
              const Text("Please create an account to find your dream job",
                  style: TextStyle(
                      color: Color(0xff6B7280),
                      fontSize: 16,
                      fontWeight: FontWeight.w400)),
              const SizedBox(height: 30),
              CustomeTextField(
                controller: controller.usernameController,
                prefixImage: Image.asset(
                  "assets/image/icons/profile.png",
                  scale: 2.5,
                ),
                hintext: "Username",
              ),
              const SizedBox(height: 16),
              CustomeTextField(
                controller: controller.emailController,
                prefixImage: Image.asset(
                  "assets/image/icons/sms.png",
                  scale: 2.5,
                ),
                hintext: "Email",
              ),
              const SizedBox(height: 16),
              Form(
                key: _formKey,
                child: CustomeTextFieldPAss(
                  errorText: "Password must be at least 8 characters",
                  validator: (value) {
                    if (value == null || value.length <= 8) {
                      return 'Password must be at least 8 characters ';
                    }
                    return null;
                  },
                  textInputType: TextInputType.visiblePassword,
                  controller: controller.passwordController,
                  prefixImage: Image.asset(
                    "assets/image/icons/lock.png",
                    color: const Color(0xff9CA3AF),
                    scale: 2.5,
                  ),
                  suffixIcons: Icons.visibility_off,
                  hintext: "Password",
                ),
              ),
              const SizedBox(height: 20),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(color: Color(0xff9CA3AF)),
                  ),
                  const SizedBox(width: 6),
                  GestureDetector(
                      onTap: () {
                        Get.to(LoginScreen());
                      },
                      child: const Text("Login",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF3366FF))))
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              CustomElvatedButton(
                text: const Text(
                  "Create account",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: const Color(0xff3366FF),
                onpress: () async {
                  if (!_formKey.currentState!.validate()) {
                    return;
                  }
                  await controller.signUp();
                  Get.snackbar(
                    'Sign Up Successful',
                    'Welcome to our app!',
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.green,
                    colorText: Colors.white,
                  );
                },
              ),
              const SizedBox(height: 20),
              const SizedBox(
                height: 20,
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(thickness: 2),
                    ),
                    SizedBox(width: 25),
                    Text("Or Login With Account"),
                    SizedBox(width: 25),
                    Expanded(
                      child: Divider(thickness: 2),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Logos(
                      image: AssetImage("assets/image/logo/google.png"),
                      text: Text("Google")),
                  // Spacer(),
                  Logos(
                      image: AssetImage("assets/image/logo/Facebook.png"),
                      text: Text("Facebook")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}