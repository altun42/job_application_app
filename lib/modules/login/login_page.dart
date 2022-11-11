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
            SizedBox(height: 5.h),
            CustomTitle(text: "Welcome"),
            CustomSubtitle(text: "Login to your account"),
            SizedBox(height: 3.h),
            CustomTextformInput(
              controller: controller.emailController,
              text: "Email",
              hintText: "Email",
            ),
            SizedBox(height: 1.h),
            CustomTextformInput(
              isPassword: 1,
              controller: controller.passwordController,
              text: "Password",
              hintText: "Password",
            ),
            Padding(
              padding: EdgeInsets.only(right: 8.w, top: 1.h),
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
              height: 3.5.h,
            ),
            CustomLoginButton(
              ontop: () {},
            ),
            SizedBox(
              height: 2.h,
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
                  width: 2.w,
                ),
                Text(
                  "Create now",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 16.5.sp,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5.5.h,
            ),
            Center(
              child: Bounceable(
                  onTap: () {},
                  child: Container(
                    width: 31.61.w,
                    height: 4.5.h,
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
