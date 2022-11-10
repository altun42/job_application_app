import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:job_application_app/modules/login/login_page.dart';
import 'package:job_application_app/modules/register/register_controller.dart';
import 'package:job_application_app/shared/widgets/background_image.dart';
import 'package:job_application_app/shared/widgets/custom_login_button.dart';
import 'package:job_application_app/shared/widgets/custom_text_button.dart';

import '../../shared/widgets/custom_subtitle.dart';
import '../../shared/widgets/custom_text_form_input.dart';
import '../../shared/widgets/custom_title.dart';

class RegisterPage extends GetView<RegisterController> {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(RegisterController());
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BackgroundImage(),
            CustomTitle(text: "Register"),
            CustomSubtitle(text: "Create a new account"),
            SizedBox(height: 10),
            CustomTextformInput(
              controller: controller.UsernameController,
              text: "Username",
              hintText: "Username",
            ),
            SizedBox(height: 6),
            CustomTextformInput(
              controller: controller.emailController,
              text: "Email",
              hintText: "Email",
            ),
            SizedBox(height: 6),
            CustomTextformInput(
              controller: controller.numberController,
              text: "Mobile Number",
              hintText: "Mobile Number",
            ),
            SizedBox(height: 6),
            CustomTextformInput(
              isPassword: 1,
              controller: controller.passwordController,
              text: "Password",
              hintText: "Password",
            ),
            SizedBox(
              height: 28,
            ),
            CustomLoginButton(ontop: () {}),
            SizedBox(
              height: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextButton(
                  color: Color(0xff616161),
                  text: "Already have account?",
                  ontap: () {
                    Get.to(LoginPage());
                  },
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
