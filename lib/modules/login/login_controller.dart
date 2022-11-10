import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool obscureText = true.obs;
  RxBool passwordVisible = true.obs;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  void onInit() {
    passwordVisible.value = true;
    obscureText.value = true;
    super.onInit();
  }
}
