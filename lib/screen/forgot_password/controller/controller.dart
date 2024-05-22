import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

/*class UserController extends GetxController {
  static UserController instance = Get.find();
  var isLoading = false.obs;
  var errorMessage = ''.obs;

  void loginUser(String username, String password) async {
    isLoading.value = true;
    errorMessage.value = '';

    final response = await http.post(
      Uri.parse('https://your-api-url.com/auth/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'username': username,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      // Save the token and navigate to the home page
      final jsonResponse = json.decode(response.body);
      final token = jsonResponse['token'];
      // Save the token using GetStorage or any other local storage

      isLoading.value = false;
      Get.offAllNamed('/home');
    } else {
      isLoading.value = false;
      errorMessage.value = 'Invalid credentials';
    }
  }
}*/




/*import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_project/controllers/user_controller.dart';

class LoginView extends StatelessWidget {
  final UserController userController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: userController.usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a username';
                }
                return null;
              },
            ),
            SizedBox(height: 16.0),
            Obx(
              () => TextFormField(
                controller: userController.passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                obscureText: userController.isObscure.value,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a password';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 16.0),
            Obx(
              () => RaisedButton(
                onPressed: userController.isLoading.value
                    ? null
                    : () {
                        if (userController.formKey.currentState!.validate()) {
                          userController.loginUser();
                        }
                      },
                child: Text('Login'),
              ),
            ),
            SizedBox(height: 16.0),
            Obx(
              () => Text(
                userController.errorMessage.value,
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/