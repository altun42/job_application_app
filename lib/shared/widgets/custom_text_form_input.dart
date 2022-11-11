import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_application_app/modules/login/login_controller.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomTextformInput extends StatelessWidget {
  final String text;
  final String hintText;
  final TextEditingController controller;
  final int? isPassword;
  CustomTextformInput(
      {required this.hintText,
      required this.text,
      required this.controller,
      this.isPassword});

  @override
  Widget build(BuildContext context) {
    LoginController loginController = LoginController();
    return Padding(
      padding: EdgeInsets.only(left: 8.w, right: 8.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(
              color: Color(0xffFEFCFC),
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
              fontSize: 17.5.sp,
            ),
          ),
          SizedBox(
            height: 9.sp,
          ),
          isPassword == 1
              ? Obx(
                  () {
                    return TextFormField(
                      keyboardType:
                          text == "Mobile Number" ? TextInputType.phone : null,
                      obscureText: loginController.passwordVisible.value,
                      controller: controller,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              loginController.passwordVisible.value =
                                  !loginController.passwordVisible.value;
                            },
                            icon: Icon(
                              loginController.passwordVisible.value
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.black,
                            )),
                        hintText: hintText,
                        hintStyle: TextStyle(
                          color: Color(0xffC4C4C4),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          fontSize: 17.5.sp,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        border: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    );
                  },
                )
              : TextFormField(
                  keyboardType:
                      text == "Mobile Number" ? TextInputType.phone : null,
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle: TextStyle(
                      color: Color(0xffC4C4C4),
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      fontSize: 17.5.sp,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
