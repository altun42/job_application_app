import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_application_app/modules/login/login_controller.dart';
import 'package:job_application_app/modules/register/register_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

import '../../shared/widgets/background_image.dart';
import '../../shared/widgets/custom_login_button.dart';
import '../../shared/widgets/custom_subtitle.dart';
import '../../shared/widgets/custom_text_button.dart';
import '../../shared/widgets/custom_text_form_input.dart';
import '../../shared/widgets/custom_title.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BackgroundImage(),
            SizedBox(height: 51),
            CustomTitle(text: "Welcome"),
            CustomSubtitle(text: "Login to your account"),
            SizedBox(height: 25),
            CustomTextformInput(
              controller: controller.emailController,
              text: "Email",
              hintText: "Email",
            ),
            SizedBox(height: 6),
            CustomTextformInput(
              isPassword: 1,
              controller: controller.passwordController,
              text: "Password",
              hintText: "Password",
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30, top: 7),
              child: Align(
                alignment: Alignment.topRight,
                child: CustomTextButton(
                  ontap: () {},
                  text: "Forgot Password?",
                  color: Color(
                    0xffEA4335,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            CustomLoginButton(
              ontop: () {},
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextButton(
                  ontap: () {
                    Get.to(RegisterPage());
                  },
                  color: Color(0xff616161),
                  text: "Don't have account?",
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "Create now",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 49,
            ),
            Center(
              child: Bounceable(
                  onTap: () {},
                  child: Container(
                    width: 31.61,
                    height: 30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/googleLogo.png")),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
