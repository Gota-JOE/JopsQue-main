import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../work_interested_screen/work_interested_screen.dart';

/*class CreateAccountController extends GetxController {
  late final TextEditingController usernameController = TextEditingController();
  late final TextEditingController emailController = TextEditingController();
  late final TextEditingController passwordController = TextEditingController();
  late final formKey = GlobalKey<FormState>();
  late final isLoading = false;

  Future<bool> signUp() async {
    String name = usernameController.text;
    String password = passwordController.text;
    String email = emailController.text;

    try {
      final response = await Get.find<Dio>().post(
        "https://project2.amit-learning.com/api/auth/register",
        data: {
          "name": name,
          'email': email,
          'password': password,
        },
        options: Options(validateStatus: (_) => true),
      );

      if (!response.data['status']) {
        Get.snackbar(
          "Error",
          "The username, email or password is not correct",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
        return false;
      } else {
        Get.offAll(() => WorkInterestedScreen());
        return true;
      }
    } catch (e) {
      Get.snackbar(
        "Error",
        "An error occurred while signing up",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return false;
    }
  }
}*/

class CreateAccountController extends GetxController {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> signUp() async {
    String name = usernameController.text;
    String password = passwordController.text;
    String email = emailController.text;

    try {
      final response = await Get.find<Dio>().post(
        "https://project2.amit-learning.com/api/auth/register",
        data: {
          "name": name,
          'email': email,
          'password': password,
        },
        options: Options(validateStatus: (_) => true),
      );

      if (!response.data['status']) {
        Get.snackbar(
          "Error",
          "The username, email or password is not correct",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      } else {
        Get.to(() => WorkInterestedScreen());
        update();
      }
    } catch (e) {
      Get.snackbar(
        "Error",
        "An error occurred while signing up",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }
}
/**class CreateAccountController extends GetxController {
    // Declare reactive variables for form data
    final RxString usernameController = RxString('');
    final RxString emailController = RxString('');
    final RxString passwordController = RxString('');

    // Define an error variable to show error messages
    RxString error = RxString('');

    // Define a response variable to store the API response
    Rx<Map<String, dynamic>> response = Rx<Map<String, dynamic>>({});

    // Define a function to submit the form data
    Future<void> signUp() async {
    // Set the error message to an empty string
    error.value = '';

    // Check if the form data is valid
    if (usernameController.value.isEmpty ||
    emailController.value.isEmpty ||
    passwordController.value.isEmpty) {
    // If the form data is not valid, set the error message to a message indicating that the form is not valid
    error.value = 'Please fill in all the fields.';
    return;
    }

    // Call the API to sign up the user
    try {
    // Get an instance of the Dio library
    final dio = Get.find<Dio>();

    // Make the API request to sign up the user
    final responseData = await dio.post(
    'https://project2.amit-learning.com/api/auth/register',
    data: {
    "name": usernameController.value,
    'email': emailController.value,
    'password': passwordController.value,
    },
    options: Options(validateStatus: (_) => true),
    );

    // Set the response variable to the API response data
    this.response.value = responseData.data;

    // If the API response indicates that the sign up was not successful, show an error message
    if (!responseData.data['status']) {
    error.value = 'The username, email or password is not correct.';
    return;
    }

    // If the API response indicates that the sign up was successful, navigate to the work interested screen
    Get.off(() => WorkInterestedScreen());

    } catch (e) {
    // If an error occurred during the API request, show an error message
    error.value = 'An error occurred while signing up.';
    }
    }
    }*/
