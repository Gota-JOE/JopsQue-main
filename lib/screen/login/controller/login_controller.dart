import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../database/local_database.dart';
import '../../../model/user.dart';
import '../../../provider/provider.dart';



class AuthController extends GetxController {
  JopProvider contr = JopProvider();

  Future<bool> login(String email, String password, bool isRmember) async {
    Dio dio = Dio();
    final response = await dio.post(
      "https://project2.amit-learning.com/api/auth/login",
      data: {
        'email': email,
        'password': password,
      },
      options: Options(headers: {
        "Accept": "application/json",
      }, validateStatus: (_) => true),
    );
    if (response.statusCode != 200) {
      return false;
    } else {
      User user = User.fromJson(response.data['user']);
      user.token = response.data['token'];

      if (isRmember) {
        LocalDataBase.setUser(user);
        LocalDataBase.setToken(user.token!);
      }

      // user = datauser;
      update();
    }
    contr.getSearch();
    contr.getJops();
    return true;
  }

  /*void logout() {
    LocalDataBase.clearUser();
    LocalDataBase.clearToken();
    update();
  }*/
}
class LoginController extends GetxController {
  JopProvider contr = JopProvider();
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  final isRmember = false.obs;
  final isvisible = true.obs;

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void toggleVisibility() {
    isvisible.value = !isvisible.value;
  }

  void rmemberPassword(v) {
    isRmember.value = v!.value;
  }

  /*Future<bool> login(String email, String password, bool isRmember) async {
    Dio dio = Dio();
    final response = await dio.post(
      "https://project2.amit-learning.com/api/auth/login",
      data: {
        'email': email,
        'password': password,
      },
      options: Options(headers: {
        "Accept": "application/json",
      }, validateStatus: (_) => true),
    );
    if (response.statusCode != 200) {
      return false;
    } else {
      contr.user = User.fromJson(response.data['user']);
      contr.user!.token = response.data['token'];
      if (isRmember) {
        LocalDataBase.setUser(contr.user!);
        LocalDataBase.setToken(contr.user!.token!);
      }

      update();
    }
    contr.getSearch();
    contr.getJops();
    update();

    return true;
  }
}*/
/*class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  var isRemember = false.obs;
  var isVisible = true.obs;

  void toggleRemember() {
    isRemember.value = !isRemember.value;
  }

  void toggleVisibility() {
    isVisible.value = !isVisible.value;
  }

  Future<bool> login(String email, String password, bool isRemember) async {
    // Add your login logic here
    // Return true if login is successful, false otherwise

    return true;
  }*/
}
