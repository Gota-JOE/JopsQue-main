import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ForgotPasswordThreeController extends GetxController {
  var isPasswordVisible = false.obs;
  var password = ''.obs;
  final confirmPassword = ''.obs;
  Rx<Color> buttonColor = Colors.grey.obs;
  final country;
  bool isSelected;

  ForgotPasswordThreeController({this.country, this.isSelected = false});

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
    //isPasswordVisible.toggle();
  }

  // create_account_screen_two
  Color selectedColor = Colors.blueGrey; // Initial color

  void changeColor(Color newColor) {
    selectedColor = newColor;
    //update(); // This updates the UI with the new color
  }

  // Create a function to validate the form
  void validateForm() {
    if (password.value != confirmPassword.value) {
      // If the passwords don't match, show an error message
      Get.snackbar('Error', 'The passwords do not match');
      buttonColor.value = Colors.grey;
    } else {
      // If the passwords match, proceed with form submission
      buttonColor.value = Colors.blue;
      // ...
    }
  }

/////////////////////////////////

  final _formKey = GlobalKey<FormState>();
  final _password1 = ''.obs;
  final _password2 = ''.obs;
  final _buttonColor = Colors.grey.obs;

  bool get passwordsMatch => _password1.value == _password2.value;

  void validatePasswords() {
    if (_formKey.currentState!.validate()) {
      if (passwordsMatch) {
        _buttonColor.value = Colors.blue;
      } else {
        _buttonColor.value = Colors.grey;
      }
    }
  }

  void onPassword1Changed(String value) {
    _password1.value = value;
    validatePasswords();
  }

  void onPassword2Changed(String value) {
    _password2.value = value;
    validatePasswords();
  }

  void onFormSubmitted() {
    if (passwordsMatch) {
      //Get.to(()=>CreateAccountOne());
    }
  }
}
